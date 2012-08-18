// This is a test harness for your module
// You should do something interesting in this harness 
// to test out the module and to provide instructions 
// to users on how to use it by example.


// open a single window
var win = Ti.UI.createWindow({
    backgroundColor:'white'
});
var button = Ti.UI.createButton({
    title: "Toggle LED"
});
win.add(button);
win.open();

// TODO: write your module tests here
var tiled = require('ti.led');
Ti.API.info("module is => " + tiled);
var on = true;

button.addEventListener("click", function() {
    Ti.API.info(on);
    /*tiled.toggle(on);
    on = !on;*/
    tiled.morse("SOS");
});