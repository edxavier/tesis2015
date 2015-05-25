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

    console.info(req.body)
    server.io.broadcast("boot_event", req.body)
    res.send("Boot Event Received");
});

server.post('/interface_event/', function (req, res) {

    console.info(req.body)
    server.io.broadcast("boot_event", req.body)
    res.send("Boot Event Received");
});

server.post('/general_event/', function (req, res) {

    console.info(req.body)
    server.io.broadcast("boot_event", req.body)
    res.send("Boot Event Received");
});



server.listen(8500);
console.log("el servidor esta corriendo http://localhost:8500");