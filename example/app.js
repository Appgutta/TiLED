// open a single window
var win = Ti.UI.createWindow({
    backgroundColor:'white',
    layout: "vertical"
});

var toggle = Ti.UI.createButton({
    title: "Toggle LED",
    top: 200
});

var morse = Ti.UI.createButton({
    title: "Morse SOS",
    top: 20
});

win.add(toggle, morse);
win.open();

var tiled = require('ti.led');
var on = true;

toggle.addEventListener("click", function() {
    tiled.toggle(on);
    on = !on;
});

morse.addEventListener("click", function() {
    tiled.morse("SOS");
});