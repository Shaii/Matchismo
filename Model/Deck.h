//
//  Deck.h
//  Matchismo
//
//  Created by Shaii on 7/8/14.
//  Copyright (c) 2014 cs139p. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void) addCard: (Card * )card atTop:(BOOL)atTop;
- (void) addCard: (Card * )card;
- (Card *) drawRandomCard;

@end
