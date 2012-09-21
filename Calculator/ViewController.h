//
//  ViewController.h
//  Calculator
//
//  Created by Jakub Hladík on 19.09.12.
//  Copyright (c) 2012 Jakub Hladík. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calculator.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *displayLabel;
- (IBAction)digitTapped:(UIButton *)sender;

- (IBAction)operationTapped:(UIButton *)sender;
- (IBAction)enterTapped:(UIButton *)sender;

@end
