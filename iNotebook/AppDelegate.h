//
//  AppDelegate.h
//  iNotebook
//
//  Created by Alexandre Cros on 20/04/15.
//  Copyright (c) 2015 Alex Cros. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AGTSimpleCoreDataStack;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) AGTSimpleCoreDataStack *model;

@end

