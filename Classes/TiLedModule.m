//
//  TiLedModule.m
//  tiled
//
//  Created by Chris Magnussen on 18.08.12.
//  Copyright (c) 2012 Appgutta, DA. All rights reserved.
//

#import "TiLedModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"

@implementation TiLedModule

@synthesize LEDTimer, LEDFlashTimer;
@synthesize LEDActivated;
@synthesize led, morseblink;

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"3a3fd5d6-ac61-4b1c-b792-12a6b7eb6fd8";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"ti.led";
}

#pragma mark Lifecycle

-(void)startup
{
	LEDIsOn = NO;
	LEDActivated = NO;
	LEDFlashOn = NO;
	
	led = [[LEDController alloc] init];
    morseblink = [[MorseController alloc] init];
    
    /*self.LEDTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(LEDTimerCallback:) userInfo:nil repeats:YES];
	self.LEDFlashTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(LEDFlashTimerCallback:) userInfo:nil repeats:YES];*/

    
	[super startup];
	
	NSLog(@"[INFO] %@ loaded",self);
}

-(void)shutdown:(id)sender
{
	// this method is called when the module is being unloaded
	// typically this is during shutdown. make sure you don't do too
	// much processing here or the app will be quit forceably
	
	// you *must* call the superclass
	[super shutdown:sender];
}

#pragma mark Cleanup 

-(void)dealloc
{
	[led release];
    [morseblink release];
	[super dealloc];
}

#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}

#pragma mark Listener Notifications

-(void)_listenerAdded:(NSString *)type count:(int)count
{
	if (count == 1 && [type isEqualToString:@"my_event"])
	{
		// the first (of potentially many) listener is being added 
		// for event named 'my_event'
	}
}

-(void)_listenerRemoved:(NSString *)type count:(int)count
{
	if (count == 0 && [type isEqualToString:@"my_event"])
	{
		// the last listener called for event named 'my_event' has
		// been removed, we can optionally clean up any resources
		// since no body is listening at this point for that event
	}
}

#pragma Public APIs

-(void)toggle:(id)args
{
	if (!LEDIsOn) {
		[led toggle:YES];
        LEDIsOn = YES;
	} else {
		[led toggle:NO];
        LEDIsOn = NO;
	}
}

-(void)morse:(id)txt
{
	ENSURE_SINGLE_ARG(txt, NSString)
    [morseblink blink:txt];
}

-(id)example:(id)args {
    NSLog(@"Example");
}

@end
