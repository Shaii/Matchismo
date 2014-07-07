//
//  PlayingCard.h
//  Matchismo
//
//  Created by Shaii on 7/8/14.
//  Copyright (c) 2014 cs139p. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property   (nonatomic) NSUInteger rank;

+ (NSArray *) validSuits;
@end
