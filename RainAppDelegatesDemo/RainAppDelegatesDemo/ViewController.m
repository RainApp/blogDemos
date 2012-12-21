//
//  ViewController.m
//  RainAppDelegatesDemo
//
//  Created by David Santana Molina on 21/12/12.
//  Copyright (c) 2012 David Santana Molina. All rights reserved.
//

#import "ViewController.h"
#import "CalculatorDelegate.h"
@interface ViewController ()<CalculatorProtocol, UITextFieldDelegate>{

    CalculatorDelegate * myCalculatorDelegate;

}

@end

@implementation ViewController

- (void)viewDidLoad
{
       [super viewDidLoad];
    
        //1) instantiate the delegate
    myCalculatorDelegate = [[CalculatorDelegate alloc]initWithDelegate:self];

    _inputA.delegate = self;
    _inputB.delegate = self;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Delegate methods
-(void)finishsubstact:(float)result{

    _resultLabel.text = [NSString stringWithFormat:@"%.2f",result];
}
-(void)finishAdd:(float)result{

    _resultLabel.text = [NSString stringWithFormat:@"%.2f",result];

}

#pragma mark - launch operation
- (IBAction)operate:(id)sender {
    
    float a = [_inputA.text floatValue];
    float b = [_inputB.text floatValue];
    if(_operationType.selectedSegmentIndex == 0) [myCalculatorDelegate sumTerm:a withTerm:b];
    else if (_operationType.selectedSegmentIndex == 1) [myCalculatorDelegate substractTerm:a withTerm:b];
    else NSLog(@"Operation no found");
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField{



   [textField resignFirstResponder];
    return YES;
}


@end
