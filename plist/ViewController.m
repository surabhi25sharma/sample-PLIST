//
//  ViewController.m
//  plist
//
//  Created by Abhishek P Mukundan on 26/12/17.
//  Copyright © 2017 SETINFOTECH. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    
    NSMutableDictionary *data;
    NSMutableArray*arraysave;
    NSString *path;
    
    NSString*name;
    NSString*surname;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    path = [documentsDirectory stringByAppendingPathComponent:@"PLIST.plist"];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    if (![fileManager fileExistsAtPath: path]) {
        
        path = [documentsDirectory stringByAppendingPathComponent: [NSString stringWithFormat:@"PLIST.plist"] ];
    }
    
   
    
    if ([fileManager fileExistsAtPath: path]) {
        
        
        arraysave =[[NSMutableArray alloc]initWithContentsOfFile:path];
    }
    else
        
    {
        // If the file doesn’t exist, create an empty dictionary
       
        arraysave = [[NSMutableArray alloc] init];
    }

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)Savebtn:(id)sender {
    
    
    name= _NameTxt.text;
    surname = _SurnameTxt.text;
    

    
    
    data =[[NSMutableDictionary alloc]init];
    
    [data setObject:name forKey:@"Namevalue"];
    [data setObject:surname forKey:@"Surnamevalue"];
    
    
    
    [arraysave addObject:data];
    
    [arraysave writeToFile:path atomically:YES];
    
    NSLog(@"%@",arraysave);
    
    //To retrieve the data from the plist
//    NSMutableDictionary *savedValue = [[NSMutableDictionary alloc] initWithContentsOfFile: path];
//    NSString *value = [savedValue objectForKey:@"value"];
//    NSLog(@"%@",value);
    
}

- (IBAction)UpdateBtn:(id)sender {
    
    NSArray *array = [[NSArray alloc] initWithContentsOfFile:path];
    NSString*stringvalue =[[array objectAtIndex:data] valueForKey:@"Surnamevalue"];
    NSLog(@"%@",stringvalue);
    
    
}
@end
