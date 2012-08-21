//
//  MorseController.m
//  tiled
//
//  Created by Chris Magnussen on 18.08.12.
//  Copyright (c) 2012 Appgutta, DA. All rights reserved.
//

#import "MorseController.h"

@implementation MorseController

@synthesize led;

- (id)init {
    if (self = [super init]) {
		[self setup];
    }
	
    return self;
}

-(void)setup 
{
    running_blink = NO;
    led = [[LEDController alloc] init];
}

-(void)blink:(NSString *)txt
{
    morseText = [txt lowercaseString];
    [morseText retain];
    [NSThread detachNewThreadSelector:@selector(start_blinking_phone) toTarget:self withObject:nil];
}

-(void)start_blinking_phone
{
	NSAutoreleasePool * thread_pool = [[NSAutoreleasePool alloc] init];
	NSDictionary *morse_codes=[NSDictionary dictionaryWithDictionary:[MorseCode create_morse_dictionary]];
	running_blink = YES;
    int letter_form_ln;
    int dot_or_dash=-1;
    NSInteger text_len = [morseText length];
	[self performSelectorOnMainThread:@selector(inter_view_change:) withObject:[NSNumber numberWithInt:dot_or_dash] waitUntilDone:YES];
	[NSThread sleepForTimeInterval:TIME_UNIT*PAUSE_LETTER ];
	dot_or_dash *= -1;
	for (int letter=0; (letter<text_len) && running_blink; ++letter) {
		NSString * current_letter= [NSString stringWithFormat:@"%c",[morseText characterAtIndex:letter]];
		NSString * letter_form = [morse_codes objectForKey:current_letter];
		letter_form_ln = [letter_form length];
		for (int letter_index=0;  (letter_index<letter_form_ln) && running_blink; ++letter_index) {
			[self performSelectorOnMainThread:@selector(inter_view_change:) withObject:[NSNumber numberWithInt:dot_or_dash] waitUntilDone:YES];
			[NSThread sleepForTimeInterval:TIME_UNIT*([letter_form characterAtIndex:letter_index] - 48)];
			dot_or_dash *= -1;
			
		}
		[self performSelectorOnMainThread:@selector(inter_view_change:) withObject:[NSNumber numberWithInt:dot_or_dash] waitUntilDone:YES];
		[NSThread sleepForTimeInterval:TIME_UNIT*PAUSE_LETTER ];
		dot_or_dash *= -1;
	}
	[thread_pool release];
}

-(void)inter_view_change:(NSNumber *)next_view_int
{
	if (running_blink) {
		if ([next_view_int intValue] == WHITE ) {
			[led toggle:YES];
		}else if ([next_view_int intValue] == BLACK) {
			[led toggle:NO];
		}
	}
}

-(void)dealloc {
    [morseText release];
	[led release];
	[super dealloc];
}


@end
