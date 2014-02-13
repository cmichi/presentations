var net = require("net");
var s = net.createServer();

s.addListener("connection", function (socket) {
	socket.write("hello, stranger!\n");
	console.log("greeted socket");
	socket.end();
});

s.listen(1337);
