//
//  NSColor+WebColors.h
//  MoltenVisuals
//
//  Created by Nicholas Bourey on 7/20/13.
//  Copyright (c) 2013 Nicholas Bourey. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSColor (WebColors)

+ (NSColor *)colorFromWebString:(NSString *)colorString;

@end
