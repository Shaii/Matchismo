//
//  PlayingCard.m
//  Matchismo
//
//  Created by Shaii on 7/8/14.
//  Copyright (c) 2014 cs139p. All rights reserved.
//

#import "PlayingCard.h"

@interface PlayingCard()

@property (strong, nonatomic) NSArray *rankStrings;

@end

@implementation PlayingCard


- (NSString *) contents
{
//    NSArray * rankStrings = @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
//    return [NSString stringWithFormat:@"%d%@", self.rank, self.suit];
    return [self.rankStrings[self.rank] stringByAppendingString:self.suit];
}

- (NSArray *) rankStrings
{
    
    if (!_rankStrings) {
        _rankStrings = @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
    }
    return _rankStrings;
}

@synthesize suit = _suit;

+ (NSArray *)validSuits
{
    return @[@"♥",@"♦",@"♠",@"♣"];
}

-(void)setSuit:(NSString *)suit
{
    
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit
{
    return _suit ? _suit : @"?";
}


@end
