//
//  CalculatorDelegate.m
//  RainAppDelegatesDemo
//
//  Created by David Santana Molina on 21/12/12.
//  Copyright (c) 2012 David Santana Molina. All rights reserved.
//

#import "CalculatorDelegate.h"
@interface CalculatorDelegate (){
        //with this we have a iVar with 
        //a required adoption of protocol
    id<CalculatorProtocol> myDelegate;
    
}
@end

@implementation CalculatorDelegate

-(id)initWithDelegate:(id<CalculatorProtocol>)delegate{

    if (self = [super init]) {
        myDelegate = delegate;
    }

    return self;
}

-(void)sumTerm:(float)a withTerm:(float)b{

    float result = a + b;

    [myDelegate finishAdd:result];

}
-(void)substractTerm:(float)b withTerm:(float)a{

    float result = b-a;
    
    [myDelegate finishsubstact:result];

}
@end
