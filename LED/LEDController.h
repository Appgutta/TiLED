//
//  LEDController.m
//  tiled
//
//  Created by Chris Magnussen on 18.08.12.
//  Copyright (c) 2012 Appgutta, DA. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>

@interface LEDController : NSObject
{
    AVCaptureDevice *device;
    Class captureDeviceClass;
}

-(id)init;
-(void)toggle:(BOOL)on;

@end
