//
//  Card.h
//  CardGame
//
//  Created by Ninja Panda on 11/15/14.
//  Copyright (c) 2014 Ninja Panda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property(strong, nonatomic) NSAttributedString *contents;

@property(nonatomic,getter = isChosen) BOOL chosen;
@property(nonatomic,getter = isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;

@end
