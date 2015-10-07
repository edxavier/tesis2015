// contenido del archivo 1.js

var csrftoken = $.cookie('csrftoken');

function csrfSafeMethod(method) {
    // these HTTP methods do not require CSRF protection
    return (/^(GET|HEAD|OPTIONS|TRACE)$/.test(method));
}

$.ajaxSetup({
    beforeSend: function(xhr, settings) {
        if (!csrfSafeMethod(settings.type) && !this.crossDomain) {
            xhr.setRequestHeader("X-CSRFToken", csrftoken);
        }
    }
});

$.ajax


$(document).ready(function() {

try{
    io = io.connect('https://104.236.23.248:7076');
    //io = io.connect('http://104.236.23.248:8500');
    io.on('connect', function(){
                    console.log('Connected to server');
                });
    var notifications = parseInt($('.gestion_menu').html())
	var noti_boot = 0
	//var noti_interface = 0
	var noti_general = 0
    
    io.on('boot_event', function(data){
		if(data.tipo==="nsNotifyShutdown"){
        	$.snackbar({content: "<i class='ion-power red icon'></i> "+data.direccion+" se ha apagado",timeout: 10000});
            var audio = new Audio('/static/snd/shutdown.wav');
            audio.play();
        }
        else{
        	$.snackbar({content: "<i class='ion-power green icon'></i> "+data.direccion+" ha iniciado",timeout: 10000});
            var audio = new Audio('/static/snd/startup.mp3');
            audio.play();
        }

        notifications += 1
        noti_boot += 1
        $('.gestion_menu').html(notifications)
        $('.gestion_boot').html(noti_boot)
	});
    
    
    
    io.on('interface_event', function(data){
		//notifications += 1
        //noti_interface += 1
        var audio = new Audio('/static/snd/pop.mp3');
        audio.play();
        //$('.gestion_menu').html(notifications)
        //$('.gestion_interface').html(noti_interface)
        if(data.tipo==="linkUp")
            $.snackbar({content: data.direccion+": "+data.nombre+" <i class='ion-arrow-up-a green icon'></i>",timeout: 10000});
        else
            $.snackbar({content:data.direccion+": "+data.nombre+ " <i class='ion-arrow-down-a orange icon'></i>",timeout: 10000});

	});
    
    io.on('general_event', function(data){
		console.log(data);
		notifications += 1
        noti_general += 1
        var audio = new Audio('/static/snd/pop.mp3');
        audio.play();
        if( data.tabla==="process table"){
            if(data.warning === true || data.warning === "True")
                $.snackbar({content: data.direccion+": "+data.item+" <i class='ion-ios-gear red	 icon'></i>",timeout: 10000});
            else
                $.snackbar({content: data.direccion+": "+data.item+" <i class='ion-ios-gear green icon'></i>",timeout: 10000});
        }else if( data.tabla==="dskTable"){
            if(data.warning === true || data.warning === "True")
                $.snackbar({content: data.direccion+": "+data.item+" <i class='disk outline red  icon'></i>",timeout: 10000});
            else
                $.snackbar({content: data.direccion+": "+data.item+" <i class='disk outline green icon'></i>",timeout: 10000});
        }else{
            if(data.warning === true || data.warning === "True")
                $.snackbar({content: data.direccion+": "+data.item+" <i class='tasks  red  icon'></i>",timeout: 10000});
            else
                $.snackbar({content: data.direccion+": "+data.item+" <i class='tasks  green icon'></i>",timeout: 10000});
        }    

        $('.gestion_menu').html(notifications)
        $('.gestion_general').html(noti_general)
	});
    
    io.on('heart_beat', function(data){
		//console.log(data)
        if(data.esta_conectado==="True"){
            $.snackbar({content: data.direccion+": Conexion Reestablecida<i class='ion-arrow-swap green icon'></i>",timeout: 10000});
            var audio = new Audio('/static/snd/noty2.mp3');
            audio.play();
        }else{
            $.snackbar({content:data.direccion+":  Conexion Perdida <i class='ion-arrow-swap orange icon'></i>",timeout: 10000});
            var audio = new Audio('/static/snd/noty1.mp3');
            audio.play();
        }
	});
}catch(err) {
    console.log(err)

}
    
})