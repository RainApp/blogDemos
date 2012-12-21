//
//  CalculatorDelegate.h
//  RainAppDelegatesDemo
//
//  Created by David Santana Molina on 21/12/12.
//  Copyright (c) 2012 David Santana Molina. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol CalculatorProtocol
    //Here you can put required methods
@optional
    // This methods are optional
    // to implement in your delegate
-(void)finishsubstact:(float)result;
-(void)finishAdd:(float)result;

@end
@interface CalculatorDelegate : NSObject
    //Custom init with delegate
-(id)initWithDelegate:(id<CalculatorProtocol>)delegate;
    //Operations
-(void)sumTerm:(float)a withTerm:(float)b;
-(void)substractTerm:(float)b withTerm:(float)a;
@end
