//
//  UIColor+WebColors.m
//  MoltenVisuals
//
//  Created by Nicholas Bourey on 7/20/13.
//  Copyright (c) 2013 Nicholas Bourey. All rights reserved.
//

#import "UIColor+WebColors.h"

@implementation UIColor (WebColors)

- (UIColor *)colorFromWebString:(NSString *)colorString {
	CGFloat red = 0.0f;
	CGFloat green = 0.0f;
	CGFloat blue = 0.0f;
	CGFloat alpha = 1.0f;
	
	UIColor *color = [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
	return color;
}

@end
