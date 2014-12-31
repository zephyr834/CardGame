//
//  PlayingDeck.m
//  CardGame
//
//  Created by Ninja Panda on 12/30/14.
//  Copyright (c) 2014 Ninja Panda. All rights reserved.
//

#import "PlayingDeck.h"
#import "PlayingCard.h"

@implementation PlayingDeck

- (instancetype)init
{
    self = [super init];
    
    if (self)
    {
        for (NSString *suits in [PlayingCard validSuits])
        {
            for (NSUInteger ranks = 1; ranks <= [PlayingCard maxRank]; ranks++)
            {
                PlayingCard *newCard = [[PlayingCard alloc] init];
                newCard.suit = suits;
                newCard.rank = ranks;
                [self addCard:newCard atTop:YES];
            }
        }
    
            
    }
    
    return self;
    
}

@end
