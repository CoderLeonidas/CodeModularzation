//
//  AppDelegate.m
//  UseLibAndFramework
//
//  Created by Leonidas.Luo on 3/19/20.
//  Copyright © 2020 Leonidas.Luo. All rights reserved.
//

#import "AppDelegate.h"

#import <DynamicFramework/DynamicFramework.h>
#import <StaticFramework/StaticFramework.h>
#import "DynamicLib.h"
#import "StaticLib.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    [self testDF];
    [self testSF];
    [self testDL];
    [self testSL];
}


- (void)testDF {
    NSString *res = [[LYObject new] testLYObject];
    NSLog(@"%@", res);
}

- (void)testSF {
    NSString *res = [[LeoObject new] testLeoObject];
    NSLog(@"%@", res);
}

- (void)testDL {
    NSString *res = [[DynamicLib new] testDynamicLib];
    NSLog(@"%@", res);
}

- (void)testSL {
    NSString *res = [[StaticLib new] testStaticLib];
    NSLog(@"%@", res);
}

@end
