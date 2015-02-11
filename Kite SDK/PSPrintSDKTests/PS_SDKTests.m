//
//  PS_SDKTests.m
//  Kite SDKTests
//
//  Created by Deon Botha on 18/12/2013.
//  Copyright (c) 2013 Deon Botha. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface ViewController (Private)
- (NSString *)liveKey;
- (NSString *)sandboxKey;
@end

@interface PS_SDKTests : XCTestCase

@end

@implementation PS_SDKTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSampleAppAPIKeyIsNotSet {
    ViewController *vc = [[ViewController alloc] init];
    if (![[vc liveKey] isEqualToString:@"REPLACE_WITH_YOUR_API_KEY"] || ![[vc sandboxKey] isEqualToString:@"REPLACE_WITH_YOUR_API_KEY"]){
        XCTFail(@"API Key is set in ViewController.m, this is undesirable for third party developers when commiting & pushing codes.");
    }
}

@end