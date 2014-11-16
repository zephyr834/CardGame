//
//  Deck.m
//  CardGame
//
//  Created by Ninja Panda on 11/15/14.
//  Copyright (c) 2014 Ninja Panda. All rights reserved.
//

#import "Deck.h"
@interface Deck()

@property (strong, nonatomic) NSMutableArray *cards;
@end


@implementation Deck

-(NSMutableArray *)cards
{
    if (_cards == nil) {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

-(void) addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    }
    else
    {
        [self.cards addObject:card];
    }
}

-(void) addCard:(Card *)card
{
    [self addCard:card atTop:NO];
}

-(Card *)drawRandomCard
{
    unsigned index = arc4random() % [self.cards count];
    Card *randomCard = self.cards[index];
    [self.cards removeObjectAtIndex:index];
    
    return randomCard;
}

@end
