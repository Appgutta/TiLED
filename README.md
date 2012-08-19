TiLED Module for Titanium Mobile
============
## Description
TiLED enables developers to turn the LED light on iOS-devices on and off without showing the camera view. It even offers a Morsecode function.

Feature requests ? Let me know!


Accessing the TiLED Module
--------------------------

To access this module from JavaScript, you would do the following:

>     Titanium.LED = Ti.LED = require("ti.led");

Functions
--------
## `Ti.LED.toggle([void])`
Toggle LED light.

### Example
>     Ti.LED.toggle()

## `Ti.LED.morse(ids[string])`
Yup, it blinks your string. Max 10 letters.

### Example
>     Ti.LED.morse("SOS");

## Usage

See example.

## Author

Chris Magnussen for Appgutta, DA.

 * [Twitter][]
 * [Appgutta.no][]
 
## Credits
* MorseCode.h/.m - Sergio Botero [MorseBlinker][]

License
------
Copyright (c) 2012 by Appgutta, DA. All Rights Reserved. Please see the LICENSE file included in the distribution for further details.


[Twitter]: http://twitter.com/crmag
[Appgutta.no]: http://www.appgutta.no
[MorseBlinker]: http://github.com/sergiobuj/iOS-Sample-Code/tree/master/MorseBlinker
