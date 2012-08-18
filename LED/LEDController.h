//
//  LEDController.h
//  tiled
//
//  Created by Theta Design on 18.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
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
