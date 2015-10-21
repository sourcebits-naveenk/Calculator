//
//  ViewController.m
//  Calculator
//
//  Created by Naveen Katari on 20/10/15.
//  Copyright (c) 2015 Sourcebits. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
BOOL ifUserISTypingInMiddleOfNumber;

- (IBAction)buttonClear:(id)sender
{
    _displayResult.text = @"";
}
- (IBAction)button0:(id)sender
{
    _displayResult.text = [NSString stringWithFormat:@"%@0", _displayResult.text];
}
- (IBAction)button1:(id)sender
{
    _displayResult.text = [NSString stringWithFormat:@"%@1", _displayResult.text];
}
- (IBAction)button2:(id)sender
{
    _displayResult.text = [NSString stringWithFormat:@"%@2", _displayResult.text];
}
- (IBAction)button3:(id)sender
{
    _displayResult.text = [NSString stringWithFormat:@"%@3", _displayResult.text];
}
- (IBAction)button4:(id)sender
{
    _displayResult.text = [NSString stringWithFormat:@"%@4", _displayResult.text];
}
- (IBAction)button5:(id)sender
{
    _displayResult.text = [NSString stringWithFormat:@"%@5", _displayResult.text];
}
- (IBAction)button6:(id)sender
{
    _displayResult.text = [NSString stringWithFormat:@"%@6", _displayResult.text];
}
- (IBAction)button7:(id)sender
{
    _displayResult.text = [NSString stringWithFormat:@"%@7", _displayResult.text];
}
- (IBAction)button8:(id)sender
{
    _displayResult.text = [NSString stringWithFormat:@"%@8", _displayResult.text];
}
- (IBAction)button9:(id)sender
{
    _displayResult.text = [NSString stringWithFormat:@"%@9", _displayResult.text];
}
- (IBAction)buttonDot:(id)sender
{
    NSString *digit = [[sender titleLabel] text];
    NSRange range = [_displayResult.text rangeOfString:@"."];
    if(range.location == NSNotFound)
    {
        _displayResult.text = [_displayResult.text stringByAppendingString:digit];
        ifUserISTypingInMiddleOfNumber = YES;
    }
}
- (IBAction)buttonPlus:(id)sender
{
    operation = Plus;
    output = _displayResult.text;
    _displayResult.text = @"";
}
- (IBAction)buttonMinus:(id)sender
{
    operation = Minus;
    output = _displayResult.text;
    _displayResult.text = @"";
    
}
- (IBAction)buttonMultiply:(id)sender
{
    operation = Multiply;
    output = _displayResult.text;
    _displayResult.text = @"";
}
- (IBAction)buttonDivide:(id)sender
{
    operation = Divide;
    output = _displayResult.text;
    _displayResult.text = @"";
}

- (IBAction)buttonPercentage:(id)sender
{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc]init];
    float input = [numFormatter numberFromString:_displayResult.text].floatValue;
   _displayResult.text = [NSString stringWithFormat:@"%.2f", input/100];
}
- (IBAction)inverseSignButton:(id)sender
{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc]init];
    float input = [numFormatter numberFromString:_displayResult.text].floatValue;
    _displayResult.text = [NSString stringWithFormat:@"%.2f", 0-(input)];
}

- (IBAction)equalsButton:(id)sender
{
    NSString *value = _displayResult.text;
    switch(operation)
    {
            case Plus:
            _displayResult.text = [NSString stringWithFormat:@"%.2f", [value doubleValue]+[output doubleValue]];
            break;
            case Minus:
            _displayResult.text = [NSString stringWithFormat:@"%.2f", [value doubleValue]-[output
                doubleValue]];
            break;
            case Multiply:
            _displayResult.text = [NSString stringWithFormat:@"%.2f",[value doubleValue]*[output doubleValue]];
            break;
            case Divide:
            _displayResult.text = [NSString stringWithFormat:@"%.2f",[value doubleValue]/[output doubleValue]];
            break;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
