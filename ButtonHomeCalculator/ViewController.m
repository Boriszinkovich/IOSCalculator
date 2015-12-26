//
//  ViewController.m
//  ButtonHomeCalculator
//
//  Created by User on 05.12.15.
//  Copyright © 2015 User. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.operation =None;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)digitPressed:(UIButton *)sender forEvent:(UIEvent *)event {
    NSInteger digit = sender.tag;
    self.resultLabel.text = [NSString stringWithFormat:@"%ld",(long)digit];
    if (self.operation == None)
    {
        self.currentResult = digit;
    }
    else{
        
        switch (self.operation) {
            case AriphMultipy:
                self.currentResult = self.currentResult * digit;
                break;
            case AriphSum:
                self.currentResult = self.currentResult + digit;
                break;
            case AriphRozdel:
                self.currentResult = (NSInteger)self.currentResult / digit;
                break;
            default:
                self.currentResult = self.currentResult - digit;
                break;
        }
        self.operation = None;
    }
}

- (IBAction)plusPressed:(id)sender forEvent:(UIEvent *)event {
    NSLog(@"dsfsd");
    self.operation = AriphSum;
}

- (IBAction)minusPressed:(id)sender forEvent:(UIEvent *)event {
    self.operation = AriphMinus;
}

- (IBAction)multiplyPressed:(id)sender {
    self.operation = AriphMultipy;
}

- (IBAction)rozdelPressed:(id)sender {
    self.operation = AriphRozdel;
}

- (IBAction)resultPressed:(id)sender {
    self.resultLabel.text = [NSString stringWithFormat:@"%ld",(long)self.currentResult];
}

- (IBAction)clearPressed:(id)sender {
    self.resultLabel.text = @"0";
    self.operation = None;
    self.currentResult = 0;
}
@end
