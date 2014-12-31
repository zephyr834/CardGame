//
//  ViewController.m
//  CardGame
//
//  Created by Ninja Panda on 11/15/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"
#import "PlayingDeck.h"
#import "PlayingCard.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipCountLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) PlayingDeck *deck;

@end

@implementation ViewController


-(PlayingDeck *)deck
{
    if (_deck == nil) {
        _deck = [[PlayingDeck alloc] init];
    }
    return _deck;
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    if ([sender.currentTitle length])
    {
        [self setCardBack:sender];
    }
    else
    {
        Card *card = [self.deck drawRandomCard];
        if (card != nil) {
            [self addFlipCount];
            [self setCardFront:sender CardContent:[card contents]];
        }
    }
    
}

- (void)addFlipCount
{
    self.flipCount++;
    self.flipCountLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (void)setCardBack:(UIButton *)sender
{
    [sender setBackgroundImage:[UIImage imageNamed:@"Card Back"] forState:UIControlStateNormal];
    [sender setTitle:@"" forState:UIControlStateNormal];
}

- (void)setCardFront:(UIButton *)sender CardContent:(NSString*)content
{
    [sender setBackgroundImage:[UIImage imageNamed:@"Card Front"] forState:UIControlStateNormal];
    [sender setTitle:content forState:UIControlStateNormal];
}


@end
