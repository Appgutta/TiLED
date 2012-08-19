//
//  TiLedModule.h
//  tiled
//
//  Created by Chris Magnussen on 18.08.12.
//  Copyright (c) 2012 Appgutta, DA. All rights reserved.
//

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
