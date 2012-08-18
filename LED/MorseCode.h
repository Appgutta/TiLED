//
//  MorseCode.h
//  MorseBlinker
//
//  Created by Sergio on 3/28/10.
//  Copyright 2010 sergiobuj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define DIT 1 //unit
#define DAT 3 //units
#define IN_PAUSE 1 //units
#define PAUSE_LETTER 3 //units
#define SPACE 7 //units
#define TIME_UNIT 0.2 //unit of time
	//Paris 50 units

@interface MorseCode : NSObject {
	
}

+(NSDictionary *) create_morse_dictionary;
@end
