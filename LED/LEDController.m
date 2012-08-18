//
//  LEDController.m
//  tiled
//
//  Created by Theta Design on 18.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LEDController.h"

@interface LEDController ()
- (void)setup;
@end

@implementation LEDController

- (id)init {
    // Assign self to value returned by super's designated initializer
    // Designated initializer for NSObject is init
	
    if (self = [super init]) {
		[self setup];
    }
	
    return self;
}

-(void)setup 
{
    captureDeviceClass = NSClassFromString(@"AVCaptureDevice");
    if (captureDeviceClass != nil) {
        device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    }
}

-(void)toggle:(BOOL)on
{
	if ([device hasTorch] && [device hasFlash]){
        [device lockForConfiguration:nil];
        
        [device setTorchMode:on];
        [device setFlashMode:on];
        
        [device unlockForConfiguration];
    }
}

- (void)dealloc {
    //[device release];
    [super dealloc];
}

@end
