// reserve a 6 channel bus for lights
~lightsBus =  Bus.control(s,6);
// let's see some waves
~lightsBus.scope;

~lightsAddr = NetAddr("127.0.0.1", 12321);

// reply to Processing's data requests

OSCdef(\processing,{

    ~lightsAddr.sendMsg("/amps", ~lightBus.getSynchronous)

}, "/getAmps").permanent_(true);