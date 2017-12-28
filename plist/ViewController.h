//
//  ViewController.h
//  plist
//
//  Created by Abhishek P Mukundan on 26/12/17.
//  Copyright © 2017 SETINFOTECH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UITextField *NameTxt;


@property (weak, nonatomic) IBOutlet UITextField *SurnameTxt;


- (IBAction)Savebtn:(id)sender;


- (IBAction)UpdateBtn:(id)sender;


@end

