//
//  PlayingCard.m
//  Matchismo
//
//  Created by Shaii on 7/8/14.
//  Copyright (c) 2014 cs139p. All rights reserved.
//

#import "PlayingCard.h"

@interface PlayingCard()



@end

@implementation PlayingCard


- (NSString *) contents
{
//    NSArray * rankStrings = @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
//    return [NSString stringWithFormat:@"%d%@", self.rank, self.suit];
    NSArray * rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

+ (NSArray *) rankStrings
{

    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

@synthesize suit = _suit; // because we provide setter AND getter

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

+ (NSUInteger) maxRank
{
    return [[self rankStrings] count] - 1 ;
}

-(void) setRank:(NSUInteger)rank
{
    if(rank <= [PlayingCard maxRank])
    {
        _rank = rank;
    }
}


@end
