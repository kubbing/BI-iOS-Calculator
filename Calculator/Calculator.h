//
//  Calculator.h
//  Calculator
//
//  Created by Jakub Hladík on 19.09.12.
//  Copyright (c) 2012 Jakub Hladík. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

- (void)push:(double)value;

- (double)operationWithString:(NSString *)string;

@end
