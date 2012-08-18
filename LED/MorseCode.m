//
//  MorseCode.m
//  MorseBlinker
//
//  Created by Sergio on 3/28/10.
//  Copyright 2010 sergiobuj. All rights reserved.
//

#import "MorseCode.h"


@implementation MorseCode


+(NSDictionary *)create_morse_dictionary{
	NSString * _a = [NSString stringWithFormat:@"%d%d%d",DIT,IN_PAUSE,DAT];
	NSString * _b = [NSString stringWithFormat:@"%d%d%d%d%d%d%d",DAT,IN_PAUSE,DIT,IN_PAUSE,DIT,IN_PAUSE,DIT];
	NSString * _c = [NSString stringWithFormat:@"%d%d%d%d%d%d%d",DAT,IN_PAUSE,DIT,IN_PAUSE,DAT,IN_PAUSE,DIT];	
	NSString * _d = [NSString stringWithFormat:@"%d%d%d%d%d",DAT,IN_PAUSE,DIT,IN_PAUSE,DIT];
	NSString * _e = [NSString stringWithFormat:@"%d",DIT];
	NSString * _f = [NSString stringWithFormat:@"%d%d%d%d%d%d%d",DIT,IN_PAUSE,DIT,IN_PAUSE,DAT,IN_PAUSE,DIT];
	NSString * _g = [NSString stringWithFormat:@"%d%d%d%d%d",DAT,IN_PAUSE,DAT,IN_PAUSE,DIT];
	NSString * _h = [NSString stringWithFormat:@"%d%d%d%d%d%d%d",DIT,IN_PAUSE,DIT,IN_PAUSE,DIT,IN_PAUSE,DIT];
	NSString * _i = [NSString stringWithFormat:@"%d%d%d",DIT,IN_PAUSE,DIT];
	NSString * _j = [NSString stringWithFormat:@"%d%d%d%d%d%d%d",DIT,IN_PAUSE,DAT,IN_PAUSE,DAT,IN_PAUSE,DAT];
	NSString * _k = [NSString stringWithFormat:@"%d%d%d%d%d",DAT,IN_PAUSE,DIT,IN_PAUSE,DAT];	
	NSString * _l = [NSString stringWithFormat:@"%d%d%d%d%d%d%d",DIT,IN_PAUSE,DAT,IN_PAUSE,DIT,IN_PAUSE,DIT];
	NSString * _m = [NSString stringWithFormat:@"%d%d%d",DAT,IN_PAUSE,DAT];
	NSString * _n = [NSString stringWithFormat:@"%d%d%d",DAT,IN_PAUSE,DIT];
	NSString * _o = [NSString stringWithFormat:@"%d%d%d%d%d",DAT,IN_PAUSE,DAT,IN_PAUSE,DAT];
	NSString * _p = [NSString stringWithFormat:@"%d%d%d%d%d%d%d",DIT,IN_PAUSE,DAT,IN_PAUSE,DAT,IN_PAUSE,DIT];
	NSString * _q = [NSString stringWithFormat:@"%d%d%d%d%d%d%d",DAT,IN_PAUSE,DAT,IN_PAUSE,DIT,IN_PAUSE,DAT];
	NSString * _r = [NSString stringWithFormat:@"%d%d%d%d%d",DIT,IN_PAUSE,DAT,IN_PAUSE,DIT];
	NSString * _s = [NSString stringWithFormat:@"%d%d%d%d%d",DIT,IN_PAUSE,DIT,IN_PAUSE,DIT];
	NSString * _t = [NSString stringWithFormat:@"%d",DAT];
	NSString * _u = [NSString stringWithFormat:@"%d%d%d%d%d",DIT,IN_PAUSE,DIT,IN_PAUSE,DAT];
	NSString * _v = [NSString stringWithFormat:@"%d%d%d%d%d%d%d",DIT,IN_PAUSE,DIT,IN_PAUSE,DIT,IN_PAUSE,DAT];
	NSString * _w = [NSString stringWithFormat:@"%d%d%d%d%d",DIT,IN_PAUSE,DAT,IN_PAUSE,DAT];
	NSString * _x = [NSString stringWithFormat:@"%d%d%d%d%d%d%d",DAT,IN_PAUSE,DIT,IN_PAUSE,DIT,IN_PAUSE,DAT];	
	NSString * _y = [NSString stringWithFormat:@"%d%d%d%d%d%d%d",DAT,IN_PAUSE,DIT,IN_PAUSE,DAT,IN_PAUSE,DAT];
	NSString * _z = [NSString stringWithFormat:@"%d%d%d%d%d%d%d",DAT,IN_PAUSE,DAT,IN_PAUSE,DIT,IN_PAUSE,DIT];
	
	NSString * _1 = [NSString stringWithFormat:@"%d%d%d%d%d%d%d%d%d",DIT,IN_PAUSE,DAT,IN_PAUSE,DAT,IN_PAUSE,DAT,IN_PAUSE,DAT];
	NSString * _2 = [NSString stringWithFormat:@"%d%d%d%d%d%d%d%d%d",DIT,IN_PAUSE,DIT,IN_PAUSE,DAT,IN_PAUSE,DAT,IN_PAUSE,DAT];
	NSString * _3 = [NSString stringWithFormat:@"%d%d%d%d%d%d%d%d%d",DIT,IN_PAUSE,DIT,IN_PAUSE,DIT,IN_PAUSE,DAT,IN_PAUSE,DAT];
	NSString * _4 = [NSString stringWithFormat:@"%d%d%d%d%d%d%d%d%d",DIT,IN_PAUSE,DIT,IN_PAUSE,DIT,IN_PAUSE,DIT,IN_PAUSE,DAT];
	NSString * _5 = [NSString stringWithFormat:@"%d%d%d%d%d%d%d%d%d",DIT,IN_PAUSE,DIT,IN_PAUSE,DIT,IN_PAUSE,DIT,IN_PAUSE,DIT];
	NSString * _6 = [NSString stringWithFormat:@"%d%d%d%d%d%d%d%d%d",DAT,IN_PAUSE,DIT,IN_PAUSE,DIT,IN_PAUSE,DIT,IN_PAUSE,DIT];
	NSString * _7 = [NSString stringWithFormat:@"%d%d%d%d%d%d%d%d%d",DAT,IN_PAUSE,DAT,IN_PAUSE,DIT,IN_PAUSE,DIT,IN_PAUSE,DIT];
	NSString * _8 = [NSString stringWithFormat:@"%d%d%d%d%d%d%d%d%d",DAT,IN_PAUSE,DAT,IN_PAUSE,DAT,IN_PAUSE,DIT,IN_PAUSE,DIT];
	NSString * _9 = [NSString stringWithFormat:@"%d%d%d%d%d%d%d%d%d",DAT,IN_PAUSE,DAT,IN_PAUSE,DAT,IN_PAUSE,DAT,IN_PAUSE,DIT];
	NSString * _0 = [NSString stringWithFormat:@"%d%d%d%d%d%d%d%d%d",DAT,IN_PAUSE,DAT,IN_PAUSE,DAT,IN_PAUSE,DAT,IN_PAUSE,DAT];

	NSString * _sp = [NSString stringWithFormat:@"%d",SPACE];
	
	NSArray *objects = [NSArray arrayWithObjects:_1,_2,_3,_4,_5,_6,_7,_8,_9,_0,
						_a,_b,_c,_d,_e,_f,_g,_h,_i,_j,_k,_l,_m,_n,_o,_p,_q,_r,_s,_t,_u,_v,_w,_x,_y,_z,_sp,nil];
	NSArray *keys = [NSArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"0",
					 @"a",@"b",@"c",@"d",@"e",@"f",@"g",@"h",@"i",@"j",@"k",@"l",@"m",@"n",@"o",@"p",@"q",@"r",
					 @"s",@"t",@"u",@"v",@"w",@"x",@"y",@"z",@" ", nil];

	NSDictionary *morse_dictionary = [NSDictionary dictionaryWithObjects:objects forKeys:keys] ;
	return morse_dictionary ;
}
@end
