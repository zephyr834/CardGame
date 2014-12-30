//
//  PlayingCard.h
//  CardGame
//
//  Created by Ninja Panda on 12/30/14.
//  Copyright (c) 2014 Ninja Panda. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *) validSuits;
+ (NSUInteger) maxRank;

@end
