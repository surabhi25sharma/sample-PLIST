//
//  AppDelegate.h
//  plist
//
//  Created by Abhishek P Mukundan on 26/12/17.
//  Copyright © 2017 SETINFOTECH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

