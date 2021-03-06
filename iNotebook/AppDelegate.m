//
//  AppDelegate.m
//  iNotebook
//
//  Created by Alexandre Cros on 20/04/15.
//  Copyright (c) 2015 Alex Cros. All rights reserved.
//

#import "AppDelegate.h"
#import "AGTSimpleCoreDataStack.h"
#import "ACCNote.h"
#import "ACCNotebook.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // core data instance stack
    self.model = [AGTSimpleCoreDataStack coreDataStackWithModelName:@"Model"];
    
    [self testData];
    
    [self autoSave];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    
    [self save];
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    
    [self save];
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    NSLog(@"hasta la vista baby");
}

#pragma mark - Utils

-(void) testData{
  
    ACCNotebook *firstNotebook = [ACCNotebook notebookWithName:@"New Notebook"
                                                       context:self.model.context];
    
    ACCNote *firstNote = [ACCNote noteWithName:@"New Note"
                                      notebook:firstNotebook
                                       context:self.model.context];
    
    [ACCNote noteWithName:@"New Note(1)"
                                       notebook:firstNotebook
                                        context:self.model.context];
    // search
    NSFetchRequest *req = [[NSFetchRequest alloc]initWithEntityName:[ACCNote entityName]];
    // order
    req.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:ACCNamedEntityAttributes.name ascending:YES],
                            [NSSortDescriptor sortDescriptorWithKey:ACCNamedEntityAttributes.modificationDate ascending:NO]];
    
    NSError *error = nil;
    NSArray *results = [self.model.context executeFetchRequest:req
                                                         error:&error];
    
    if (results == nil){
        NSLog(@"Error al buscar: %@",results);
    } else {
        NSLog(@"Results %@",results);
    }
    // delete
    [self.model.context deleteObject:firstNote];
    
    [self save];
   
    
}

-(void) save {
    
    [self.model saveWithErrorBlock:^(NSError *error) {
        NSLog(@"error saving %s \n\n %@", __func__, error);
    }];

}

-(void) autoSave {
    
    if (AUTO_SAVE) {
        NSLog(@"Autosaving...");
        
        [self save];
        
        [self performSelector:@selector(autoSave)
                   withObject:nil
                   afterDelay:AUTO_SAVE_DELAY_IN_S];
    }
   
}




@end
