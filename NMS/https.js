fs = require('fs')
options = {
    key: fs.readFileSync('/etc/nginx/ssl/server.key'),
    cert: fs.readFileSync('/etc/nginx/ssl/server.crt')
}

app = require('express.io')()
var express = require('express.io');

app.https(options).io()

//agregar post, cookie y sesiones
app.configure(function () {
    app.use(express.bodyParser());
    app.use(express.methodOverride());
});

app.get('/', function (req, res) {
    //res.render('templates/notasList');
    res.send("Express IO");
    console.log("/");

});


app.post('/boot_event/', function (req, res) {

   // console.info(req.body)
    app.io.broadcast("boot_event", req.body)
    res.send("Boot Event Received");
});

app.post('/interface_event/', function (req, res) {

   // console.info(req.body)
    app.io.broadcast("interface_event", req.body)
    res.send("INTERFACE Event Received");
});


app.post('/general_event/', function (req, res) {
    app.io.broadcast("general_event", req.body)
    res.send("GENERAL Event Received");
});

app.post('/host_update/', function (req, res) {
    app.io.broadcast("host_update", req.body)
    //console.info(req.body)
    //console.info("UPDATE HOST")
    res.send("success");
});


app.post('/heart_beat/', function (req, res) {
    app.io.broadcast("heart_beat", req.body)
    //console.info(req.body)
    //console.info("Heart Beat")
    res.send("success");
});

app.post('/mem_usage/', function (req, res) {
    app.io.broadcast("mem_usage", req.body)
    res.send("success");
});

app.post('/load_avg/', function (req, res) {
    app.io.broadcast("load_avg", req.body)
    res.send("success");
});

// build realtime-web app

app.listen(7076)
console.log("el servidor esta corriendo https://localhost:7076");