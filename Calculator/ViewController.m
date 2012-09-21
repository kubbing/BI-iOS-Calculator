//
//  ViewController.m
//  Calculator
//
//  Created by Jakub Hladík on 19.09.12.
//  Copyright (c) 2012 Jakub Hladík. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (assign, nonatomic) BOOL clearOnDigit;
@property (strong, nonatomic) Calculator *calculator;

@end

@implementation ViewController

- (Calculator *)calculator
{
    if (!_calculator) {
        _calculator = [[Calculator alloc] init];
    }
    
    return _calculator;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)digitTapped:(UIButton *)sender {
    
    if (_clearOnDigit) {
        self.displayLabel.text = @"";
        _clearOnDigit = NO;
    }
    
    self.displayLabel.text = [self.displayLabel.text stringByAppendingString:sender.currentTitle];
    
    NSLog(@"%@ (%d)", self.displayLabel.text, [self.displayLabel.text length]);
}

- (IBAction)operationTapped:(UIButton *)sender {
    
    double result = [self.calculator operationWithString:sender.currentTitle];
    self.displayLabel.text = [NSString stringWithFormat:@"%.2f", result];
    
    _clearOnDigit = YES;
}

- (IBAction)enterTapped:(UIButton *)sender {
    
    double value = [self.displayLabel.text doubleValue];
    [self.calculator push:value];
    self.displayLabel.text = @"0";
}


@end
