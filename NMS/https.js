fs = require('fs')
options = {
    key: fs.readFileSync('/etc/nginx/ssl/server.key'),
    cert: fs.readFileSync('/etc/nginx/ssl/server.crt')
}

app = require('express.io')()
var express = require('express.io');

app.https(options).io()

//agregar post, cookie y sesiones
serappver.configure(function () {
    app.use(express.bodyParser());
    app.use(express.methodOverride());
});

app.get('/', function (req, res) {
    //res.render('templates/notasList');
    res.send("Trap Event Received");
    console.log("broadcast");

});

// build realtime-web app

app.listen(7076)
console.log("el servidor esta corriendo http://localhost:7076");