//
//  MorseController.m
//  tiled
//
//  Created by Chris Magnussen on 18.08.12.
//  Copyright (c) 2012 Appgutta, DA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LEDController.h"
#import "MorseCode.h"
#define SPACER 10
#define MAX_LENGTH_TEXT 10
#define SIGNED_1_DIGIT 16
#define SIGNED_2_DIGIT 25
#define SIGNED_3_DIGIT 35
#define DIGIT_12pt_HEIGHT 21
#define WHITE 1
#define BLACK -1

@interface MorseController : NSObject
{
    LEDController *led;
    int current_length;
	bool running_blink , dictionary_loaded;
    
    NSString *morseText;
}

-(id)init;
-(void)start_blinking_phone;
-(void)inter_view_change:(NSNumber *)next_view_int;

@property (nonatomic, retain) LEDController *led;

-(void)blink:(NSString *)txt;

@end
