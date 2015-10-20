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
- (IBAction)equalsButton:(id)sender
{
    NSString *value = _displayResult.text;
    switch(operation)
    {
            case Plus:
            _displayResult.text = [NSString stringWithFormat:@"%qi", [value longLongValue]+[output longLongValue]];
            break;
        case Minus:
            _displayResult.text = [NSString stringWithFormat:@"%qi", [value longLongValue]-[output
                longLongValue]];
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
