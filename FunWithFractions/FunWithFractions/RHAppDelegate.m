//
//  RHAppDelegate.m
//  FunWithFractions
//
//  Created by Jimmy Theis on 3/26/12.
//  Copyright (c) 2012 Rose-Hulman Institute of Technology. All rights reserved.
//

#import "RHAppDelegate.h"
#import "RHFraction.h"

@implementation RHAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    // Initial fraction tests
    RHFraction *fraction1 = [[RHFraction alloc] initWithNumerator:3 denominator:4];
    RHFraction *fraction2 = [[RHFraction alloc] initWithNumerator:10 denominator:1];
    RHFraction *fraction3 = [[RHFraction alloc] initWithNumerator:10 denominator:-5];
    
    NSLog(@"Fraction 1: %@", fraction1);
    NSLog(@"Fraction 2: %@", fraction2);
    NSLog(@"Fraction 3: %@", fraction3);
    
    // Divide by zero
    RHFraction *fraction4 = [[RHFraction alloc] initWithNumerator:10 denominator:0];
    
    NSLog(@"Fraction 4: %@", fraction4);
    
    // Whole numbers
    RHFraction *fraction5 = [[RHFraction alloc] initWithWholeNumber:5];
    RHFraction *fraction6 = [[RHFraction alloc] initWithWholeNumber:-3];
    
    NSLog(@"Fraction 5: %@", fraction5);
    NSLog(@"Fraction 6: %@", fraction6);
    
    // Convenience methods
    RHFraction *fraction7 = [RHFraction one];
    RHFraction *fraction8 = [RHFraction zero];
    RHFraction *fraction9 = [RHFraction negativeOne];
    RHFraction *fraction10 = [RHFraction fractionWithNumerator:10 denominator:-2];
    
    NSLog(@"Fraction 7: %@", fraction7);
    NSLog(@"Fraction 8: %@", fraction8);
    NSLog(@"Fraction 9: %@", fraction9);
    NSLog(@"Fraction 10: %@", fraction10);
    
    return YES;
}

@end
