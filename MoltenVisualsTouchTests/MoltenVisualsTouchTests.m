//
//  MoltenVisualsTouchTests.m
//  MoltenVisualsTouchTests
//
//  Created by Nicholas Bourey on 7/20/13.
//  Copyright (c) 2013 Nicholas Bourey. All rights reserved.
//

#import "MoltenVisualsTouchTests.h"
#import "UIColor+WebColors.h"

@implementation MoltenVisualsTouchTests

- (void)setUp {
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown {
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testWebColors {
    UIColor *blackColor = [UIColor colorWithRed:0.0f green:0.0f blue:0.0f alpha:1.0f];
	UIColor *transparentColor = [UIColor colorWithRed:0.0f green:0.0f blue:0.0f alpha:0.0f];
	UIColor *parsedColor = [UIColor colorFromWebString:@"#000000"];
	
	STAssertNil([UIColor colorFromWebString:@"BBBBBB"], @"Missing #");
	
	STAssertEqualObjects(blackColor, parsedColor, @"Parsing six digit css color string failed");
	
	parsedColor = [UIColor colorFromWebString:@"#00000000"];
	
	STAssertEqualObjects(transparentColor, parsedColor, @"Parsing eight digit css color string failed, (Alpha component)");
}

@end
