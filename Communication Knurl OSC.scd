// Receive messages from Knurl  (SC)

s.quit

//knurl is sending messages by the  portnumber 7000
thisProcess.openUDPPort(7000); //passive
thisProcess.openPorts;

//check traffic
OSCFunc.trace(true); // Turn posting on
OSCFunc.trace(false);

//You'll receive a dictionary representing what is playing
// sm: off | am : off  | pm : on | dm : off

//Track, map and use the message on your environment
(
OSCdef.new(\computerreceiving, { arg msg,time,addr,port;
	// [msg,time,addr,port].postln;

	if (msg[1] == 1){ "hello".postln}
}, '/good/news')
)



//Send messages to Knurl

//Send by the port 8000
// Knurl address: 192.168.7.2
n = NetAddr.new("127.0.0.1", 8000);    // create the NetAddr

//send simple messages
n.sendMsg("/computer", "Hello Knurl ");

//send loops of messages or currenrt
fork {loop{	n.sendMsg("/computer", " still runing "); "sent".postln; 1.wait}};

//to manipulate,change  and trigger sounds:

//Synth mode
~count                // 1 ,2,3,4
~amp                 // 0.3 - 1.7

//Programing mode:

~scr
~spec
~format
~mul
//Analgoue Mode:
~an2

//parameter
~an1
~freq


// Cautions All those parameters can be rewrite by the performer , they aren't fix.
