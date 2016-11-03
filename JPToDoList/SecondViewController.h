//
//  SecondViewController.h
//  JPToDoList
//
//  Created by Student P_05 on 03/10/16.
//  Copyright © 2016 Patil Jagruti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JPDatabaseManager.h"

@interface SecondViewController : UIViewController<UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *textField;

@property (strong, nonatomic) IBOutlet UIButton *buttonSave;

- (IBAction)saveTask:(id)sender;
@end

