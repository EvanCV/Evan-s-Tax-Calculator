//
//  ViewController.m
//  Evan's Tax Calculator
//
//  Created by Evan Vandenberg on 12/22/14.
//  Copyright (c) 2014 Evan Vandenberg. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


//Screen properties
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;



//Tax properties
@property double caTax;
@property double chiTax;
@property double nyTax;


@end

@implementation ViewController


// Do any additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];

    //Set the sales tax for each state upon loading
    self.caTax = .075;
    self.chiTax = .0925;
    self.nyTax = .045;


}
- (IBAction)onCalculateButtonTapped:(id)sender {

// Calculates sales tax when pressed. Results should show above the text box in resultLabel

    //return an integer value
    NSString *enteredText = self.priceTextField.text;
    double enteredValue = enteredText.intValue;


    //See which state has been selected. Calculate the tax based on enteredValue. Display value in resultLabel
    if (self.segmentedControl.selectedSegmentIndex == 0)
    {
        double result = enteredValue * self.caTax;
        self.resultLabel.text = [NSString stringWithFormat:@"$%f", result];
    }

    else if (self.segmentedControl.selectedSegmentIndex == 1){
        double result = enteredValue * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat:@"$%f", result];
    }
    else {
        double result = enteredValue * self.nyTax;
        self.resultLabel.text = [NSString stringWithFormat:@"$%f", result];
    }
}

@end
