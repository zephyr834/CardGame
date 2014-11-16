//
//  Deck.h
//  CardGame
//
//  Created by Ninja Panda on 11/15/14.
//  Copyright (c) 2014 Ninja Panda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void) addCard: (Card *)card atTop:(BOOL)atTop;
-(void) addCard: (Card *)card;

-(Card *)drawRandomCard;


@end
