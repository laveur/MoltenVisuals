//
//  MoltenVisualsTests.m
//  MoltenVisualsTests
//
//  Created by Nicholas Bourey on 7/20/13.
//  Copyright (c) 2013 Nicholas Bourey. All rights reserved.
//

#import "MoltenVisualsTests.h"
#import "NSColor+WebColors.h"

@implementation MoltenVisualsTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testWebColors {
	NSColor *blackColor = [NSColor colorWithCalibratedRed:0.0f green:0.0f blue:0.0f alpha:1.0f];
	NSColor *transparentColor = [NSColor colorWithCalibratedRed:0.0f green:0.0f blue:0.0f alpha:0.0f];
	NSColor *parsedColor = [NSColor colorFromWebString:@"#000000"];
	
	STAssertNil([NSColor colorFromWebString:@"BBBBBB"], @"Missing #");
	
	STAssertEqualObjects(blackColor, parsedColor, @"Parsing six digit css color string failed");
	
	parsedColor = [NSColor colorFromWebString:@"#00000000"];
	
	STAssertEqualObjects(transparentColor, parsedColor, @"Parsing eight digit css color string failed, (Alpha component)");
}

@end
