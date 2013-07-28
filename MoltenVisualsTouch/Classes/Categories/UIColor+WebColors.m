//
//  UIColor+WebColors.m
//  MoltenVisuals
//
//  Created by Nicholas Bourey on 7/20/13.
//  Copyright (c) 2013 Nicholas Bourey. All rights reserved.
//

#import "UIColor+WebColors.h"

@implementation UIColor (WebColors)

+ (UIColor *)colorFromWebString:(NSString *)colorString {
	CGFloat red = 0.0f;
	CGFloat green = 0.0f;
	CGFloat blue = 0.0f;
	CGFloat alpha = 1.0f;
	NSScanner *scanner = [NSScanner scannerWithString:colorString];
	unsigned long long hexColor;
	
	if([colorString characterAtIndex:0] != '#') {
		NSLog(@"Color String must start with a \'#\' symbol");
		return nil;
	}
	
	[scanner setScanLocation:1];
	[scanner scanHexLongLong:&hexColor];
	
	switch([colorString length] - 1) {
		case 6:
			red   = ((hexColor & 0xFF0000) >> 16) / 255.0f;
			green = ((hexColor & 0x00FF00) >>  8) / 255.0f;
			blue  =  (hexColor & 0x0000FF) / 255.0f;
			break;
		case 8:
			red   = ((hexColor & 0xFF000000) >> 24) / 255.0f;
			green = ((hexColor & 0x00FF0000) >> 16) / 255.0f;
			blue  = ((hexColor & 0x0000FF00) >> 8) / 255.0f;
			alpha = (hexColor & 0x000000FF) / 255.0f;
			break;
		default:
			NSLog(@"Color string format is invalid!");
			break;
	}
	
	UIColor *color = [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
	return color;
}

@end
