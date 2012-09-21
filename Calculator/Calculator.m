//
//  Calculator.m
//  Calculator
//
//  Created by Jakub Hladík on 19.09.12.
//  Copyright (c) 2012 Jakub Hladík. All rights reserved.
//

#import "Calculator.h"

@interface Calculator ()

@property (nonatomic, strong) NSMutableArray *stack;

@end

@implementation Calculator

//@synthesize stack = _stack;

- (NSMutableArray *)stack
{
    if (!_stack) {
        _stack = [NSMutableArray array];
    }
    
    return _stack;
}

- (void)push:(double)value
{
    NSNumber *number = [NSNumber numberWithDouble:value];
//    NSNumber *number = @( value );
    [self.stack addObject:number];
    
    NSLog(@"stack: %@", self.stack);
}

- (double)operationWithString:(NSString *)string
{
    double result = 0.0;

    if (self.stack.count < 2) {
        return 0.0;
    }
    
    NSNumber *left = [self.stack lastObject];
    [self.stack removeLastObject];
    NSNumber *right = [self.stack lastObject];
    [self.stack removeLastObject];
    
    if ([string isEqualToString:@"+"]) {
        result = left.doubleValue + right.doubleValue;
    }
    else if ([string isEqualToString:@"*"]) {
        result = left.doubleValue * right.doubleValue;
    }
    
    [self push:result];
    
    return result;
}

@end
