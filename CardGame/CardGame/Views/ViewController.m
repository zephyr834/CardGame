//
//  ViewController.m
//  CardGame
//
//  Created by Ninja Panda on 11/15/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"
#import "PlayingDeck.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipCountLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *deck;

@end

@implementation ViewController

-(Deck *)deck
{
    if (!_deck)
    {
        _deck = [self createDeck];
    }
    
    return _deck;
}

-(Deck *)createDeck
{
    return [[PlayingDeck alloc] init];
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
        if (card) {
            self.flipCount++;
            [self setCardFront:sender CardContent:[card contents]];
        }
    }
    
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipCountLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (void)setCardBack:(UIButton *)sender
{
    [sender setBackgroundImage:[UIImage imageNamed:@"Card Back"] forState:UIControlStateNormal];
    [sender setTitle:@"" forState:UIControlStateNormal];
}

- (void)setCardFront:(UIButton *)sender CardContent:(NSAttributedString*)content
{
    [sender setBackgroundImage:[UIImage imageNamed:@"Card Front"] forState:UIControlStateNormal];
    [sender setAttributedTitle:content forState:UIControlStateNormal];
}


@end
