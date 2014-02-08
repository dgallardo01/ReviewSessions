//
//  AppDelegate.m
//  FISReviewSession2-8
//
//  Created by Danny on 2/8/14.
//  Copyright (c) 2014 Danny. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    
    //Review Session Code
    NSArray *students = @[@"Eugene", @"Anne", @"Andrea", @"Danny", @"Liz",@"Len"];
    NSArray *grades = @[@"A", @"B", @"B", @"F"];
    //structure above would make more sense as a dictionary {name:grade}
    
    //Assume that the size of students is always equal to the size of grades
    
    //Want to print out "____ got an _"
    
//    for (NSString *student in students) {                 //No idea what the item is, but we get the index
//        NSLog(@"%@", student);
//    }

//    for (NSInteger i=0; i<[students count]; i++) {                //Get the item itself, but not the index
//        NSLog(@"%@ got an %@", students[i], grades[i]);
//    }
    
    //Want to print out "___ got an __" if there is a grade.  Print out "__ still awaiting grade" if no grade.
    
    NSMutableArray *results = [[NSMutableArray alloc]init];
    for (NSInteger i=0; i<[students count]; i++) {
        if (i<[grades count]) {
            if([grades[i] isEqualToString:@"A"])
            {
            NSString *result = [NSString stringWithFormat:@"%@ got a %@", students[i], grades[i]];
            [results addObject:result];
            }
            else{
            NSString *result = [NSString stringWithFormat:@"%@ got an %@", students[i], grades[i]];
            [results addObject:result];
            }
        } else {
            NSString *result = [NSString stringWithFormat:@"%@ is still awaiting grading", students[i]];
            [results addObject:result];
        }
    }
    
    NSLog(@"%@", results);
    
    //NSInteger vs NSNumber
        //Objects and primitives
        //Can't put primitives into collections, arrays and dictionaries.
    
    
//    NSInteger ten = 5+5;
//    NSNumber *objectTen = [NSNumber numberWithInteger:ten];
//    NSNumber *objectTen = @(5+5);

    NSNumber *five = @5;
    NSNumber *six = @6;
    NSNumber *eleven = [NSNumber numberWithInteger:([five integerValue] +[six integerValue])];
    NSLog(@"%@", eleven);
    
    //Calling the method
    
    NSLog(@"%@",[self progressReportWithStudents:students Grades:grades]);
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    
    NSLog(@"Resigning Active");
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    
    NSLog(@"Entered Background");
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

//Custom Methods

- (NSArray *)progressReportWithStudents:(NSArray *)students
                                 Grades:(NSArray *) grades
{
    NSMutableArray *results = [[NSMutableArray alloc]init];
    for (NSInteger i=0; i<[students count]; i++) {
        if (i<[grades count]) {
            if([grades[i] isEqualToString:@"A"])
            {
                NSString *result = [NSString stringWithFormat:@"%@ got a %@", students[i], grades[i]];
                [results addObject:result];
            }
            else{
                NSString *result = [NSString stringWithFormat:@"%@ got an %@", students[i], grades[i]];
                [results addObject:result];
            }
        } else {
            NSString *result = [NSString stringWithFormat:@"%@ is still awaiting grading", students[i]];
            [results addObject:result];
        }
    }
    return results;
}



@end
