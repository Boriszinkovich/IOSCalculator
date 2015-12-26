//
//  ViewController.h
//  ButtonHomeCalculator
//
//  Created by User on 05.12.15.
//  Copyright © 2015 User. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum{
    AriphSum,
    AriphMinus,
    AriphMultipy,
    AriphRozdel,
    None
}AriphmeticOperation;
@interface ViewController : UIViewController

- (IBAction)digitPressed:(UIButton *)sender forEvent:(UIEvent *)event;
- (IBAction)plusPressed:(id)sender forEvent:(UIEvent *)event;
- (IBAction)minusPressed:(id)sender forEvent:(UIEvent *)event;
- (IBAction)multiplyPressed:(id)sender;

- (IBAction)rozdelPressed:(id)sender;
- (IBAction)resultPressed:(id)sender;
@property (assign, nonatomic) AriphmeticOperation operation;
@property (strong, nonatomic) IBOutlet UILabel *resultLabel;
@property (assign,nonatomic) NSInteger currentResult;
- (IBAction)clearPressed:(id)sender;
@end

