//
//  ViewController.m
//  multiply
//
//  Created by Benjamin COOPER on 7/13/15.
//  Copyright (c) 2015 Ben Cooper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *numberTextField;
@property (strong, nonatomic) IBOutlet UILabel *multiplierLabel;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UISlider *sliderOutput;
@property (strong, nonatomic) IBOutlet UISegmentedControl *operatorSegmentControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onCalculateButtonPress:(id)sender {

    int textFieldValue = self.numberTextField.text.intValue;
    int number = self.multiplierLabel.text.intValue;

    int result;

    if (self.operatorSegmentControl.selectedSegmentIndex == 0) {
    result = textFieldValue * number;
    } else if (self.operatorSegmentControl.selectedSegmentIndex == 1) {
        result = number / textFieldValue;
    }


    if (result % 3 == 0 && result % 5 ==0) {
        self.answerLabel.text = @"fizzbuzz";
    } else if (result % 5 == 0) {
        self.answerLabel.text = @"buzz";
    } else if (result % 3 == 0) {
        self.answerLabel.text = @"fizz";
    } else {
        self.answerLabel.text = [NSString stringWithFormat:@"%i", result];
    }

    if (result >= 20) {
        self.view.backgroundColor = [UIColor greenColor];
    } else {
        self.view.backgroundColor = [UIColor whiteColor];
    }

    [self.numberTextField resignFirstResponder];
}

- (IBAction)onSliding:(UISlider *)sender {
    int sliderValue = sender.value;
    self.multiplierLabel.text = [NSString stringWithFormat:@"%i", sliderValue];

}

@end
