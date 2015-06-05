var server = require('express.io')();
var express = require('express.io');

server.http().io();

//agregar post, cookie y sesiones
server.configure(function () {
    server.use(express.bodyParser());
    server.use(express.methodOverride());
});

server.get('/trap/', function (req, res) {
    //res.render('templates/notasList');
    res.send("Trap Event Received");
    server.io.broadcast("boot", {
        message: 'io event from an io route on the server'
    });
    console.log("broadcast");

});

server.post('/boot_event/', function (req, res) {

   // console.info(req.body)
    server.io.broadcast("boot_event", req.body)
    res.send("Boot Event Received");
});

server.post('/interface_event/', function (req, res) {

   // console.info(req.body)
    server.io.broadcast("interface_event", req.body)
    res.send("INTERFACE Event Received");
});


server.post('/general_event/', function (req, res) {
    server.io.broadcast("general_event", req.body)
    res.send("GENERAL Event Received");
});

server.post('/host_update/', function (req, res) {
    server.io.broadcast("host_update", req.body)
    //console.info(req.body)
    //console.info("UPDATE HOST")
    res.send("success");
});


server.post('/heart_beat/', function (req, res) {
    server.io.broadcast("heart_beat", req.body)
    //console.info(req.body)
    //console.info("Heart Beat")
    res.send("success");
});

server.post('/mem_usage/', function (req, res) {
    server.io.broadcast("mem_usage", req.body)
    res.send("success");
});

server.post('/load_avg/', function (req, res) {
    server.io.broadcast("load_avg", req.body)
    res.send("success");
});


server.listen(8500);
console.log("el servidor esta corriendo http://localhost:8500");