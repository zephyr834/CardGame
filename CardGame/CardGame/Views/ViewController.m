//
//  ViewController.m
//  CardGame
//
//  Created by Ninja Panda on 11/15/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipCountLabel;
@property (nonatomic) int flipCount;

@end

@implementation ViewController

- (IBAction)touchCardButton:(UIButton *)sender
{
    if ([sender.currentTitle length])
    {
        [sender setBackgroundImage:[UIImage imageNamed:@"Card Back"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    else
    {
        [sender setBackgroundImage:[UIImage imageNamed:@"Card Front"] forState:UIControlStateNormal];
        [sender setTitle:@"A♣︎" forState:UIControlStateNormal];
    }
    
    self.flipCount++;
    self.flipCountLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    
}


@end
