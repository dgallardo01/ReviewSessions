//
//  AppDelegate.h
//  FISReviewSession2-8
//
//  Created by Danny on 2/8/14.
//  Copyright (c) 2014 Danny. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


- (NSArray *)progressReportWithStudents:(NSArray *)students
                                 Grades:(NSArray *) grades;


@end
