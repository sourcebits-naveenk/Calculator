//
//  ViewController.h
//  Calculator
//
//  Created by Naveen Katari on 20/10/15.
//  Copyright (c) 2015 Sourcebits. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {Plus, Minus, Multiply, Divide} CalculateOperation;

@interface ViewController : UIViewController
{
    CalculateOperation operation;
    NSString *output;
}
@property NSString *input1;
@property NSString *input2;
@property (weak, nonatomic) IBOutlet UILabel *displayResult;



@end

