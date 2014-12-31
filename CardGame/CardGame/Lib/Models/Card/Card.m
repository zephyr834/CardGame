//
//  Card.m
//  CardGame
//
//  Created by Ninja Panda on 11/15/14.
//  Copyright (c) 2014 Ninja Panda. All rights reserved.
//

#import "Card.h"

@interface Card()

@end


@implementation Card

-(BOOL)isChosen
{
    return _chosen;
}

-(BOOL)isMatched
{
    return _matched;
}

- (int) match:(NSArray *)otherCards
{
    
    int score = 0;
    
    for (Card *card in otherCards)
    {
        if ([card.contents isEqualToAttributedString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}

@end
