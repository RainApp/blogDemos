//
//  ViewController.h
//  RainAppDelegatesDemo
//
//  Created by David Santana Molina on 21/12/12.
//  Copyright (c) 2012 David Santana Molina. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UITextField *inputA;
@property (weak, nonatomic) IBOutlet UITextField *inputB;
@property (weak, nonatomic) IBOutlet UISegmentedControl *operationType;
- (IBAction)operate:(id)sender;

@end
