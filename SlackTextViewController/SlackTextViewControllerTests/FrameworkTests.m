//
//  SlackTextViewControllerTests.m
//  SlackTextViewControllerTests
//
//  Created by Ignacio Romero Z. on 3/20/15.
//  Copyright (c) 2015 Slack. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "../../Source/SlackTextViewController.h"

@interface SLKTextViewControllerTest : SLKTextViewController
@end

@implementation SLKTextViewControllerTest
@end

@interface SlackTextViewControllerTests : XCTestCase
@end

@implementation SlackTextViewControllerTests

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testSubclassing
{
    XCTAssertThrows([SLKTextViewController new]);
}

- (void)testTableViewVersion
{
    SLKTextViewControllerTest *controller = [[SLKTextViewControllerTest alloc] initWithTableViewStyle:UITableViewStylePlain];
    XCTAssertNotNil(controller.tableView, @"Cannot create SLKTextViewController instance!");
}

- (void)testCollectionViewVersion
{
    UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];
    SLKTextViewControllerTest *controller = [[SLKTextViewControllerTest alloc] initWithCollectionViewLayout:layout];
    XCTAssertNotNil(controller.collectionView, @"Cannot create SLKTextViewController instance!");
}

- (void)testScrollViewVersion
{
    UIScrollView *scrollView = [UIScrollView new];
    SLKTextViewControllerTest *controller = [[SLKTextViewControllerTest alloc] initWithScrollView:scrollView];
    XCTAssertNotNil(controller.scrollView, @"Cannot create SLKTextViewController instance!");
}

@end
