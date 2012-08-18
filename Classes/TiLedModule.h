/**
 * Your Copyright Here
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "TiModule.h"
#import "LEDController.h"
#import "MorseController.h"

@interface TiLedModule : TiModule 
{
    NSTimer *LEDTimer;
	NSTimer *LEDFlashTimer;
    
    BOOL LEDIsOn;
    BOOL LEDActivated;
    BOOL LEDFlashOn;
    
    LEDController *led;
    MorseController *morseblink;
}

@property (nonatomic, retain) NSTimer *LEDTimer;
@property (nonatomic, retain) NSTimer *LEDFlashTimer;

@property (nonatomic, assign) BOOL LEDActivated;
@property (nonatomic, retain) LEDController *led;
@property (nonatomic, retain) MorseController *morseblink;

@end
