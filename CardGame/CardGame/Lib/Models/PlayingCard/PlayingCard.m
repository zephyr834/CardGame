//
//  PlayingCard.m
//  CardGame
//
//  Created by Ninja Panda on 12/30/14.
//  Copyright (c) 2014 Ninja Panda. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit;

- (NSString *)contents
{
    NSArray *rankStrings = [PlayingCard validRanks];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
    
}

- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

- (void) setSuit:(NSString *)suit
{

    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

+ (NSArray *) validSuits
{
    return @[@"♣︎", @"♠︎", @"♥︎", @"♦︎"];
}

+ (NSArray *) validRanks
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger) maxRank
{
    return [[self validRanks] count] -1;
}

- (void)setRank:(NSUInteger)rank
{
    if ([PlayingCard maxRank] >= rank) {
        _rank = rank;
    }
}

@end
