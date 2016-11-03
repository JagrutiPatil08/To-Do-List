//
//  SecondViewController.m
//  JPToDoList
//
//  Created by Student P_05 on 03/10/16.
//  Copyright © 2016 Patil Jagruti. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)saveTask {
    NSString *task = self.textField.text;
    
    if(task.length > 0){
        NSString *insertQuery = [NSString stringWithFormat:@"INSERT INTO ToDoList(TASK_ID,TASK) VALUES ('%@','%@')",task.uppercaseString,task];
        
        NSLog(@"%@",insertQuery);
        
        int result = [[JPDatabaseManager sharedManager]executeQuery:insertQuery];
        
        
        if (result==1) {
            NSLog(@"Successfully inseerted Task");
        }
        else{
            NSLog(@"Unable to insert task");
        }
        NSLog(@"Task Saved:%@",task);
        self.textField.text=@"";
    }
    else{
        NSLog(@"Enter the task First to save");
    }
}


- (IBAction)saveTask:(id)sender {
    [self saveTask];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    [self saveTask];
    return YES;
}

@end
