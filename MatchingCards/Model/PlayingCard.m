//
//  PlayingCard.m
//  MatchingCards
//
//  Created by Akash soni on 6/10/18.
//  Copyright © 2018 Akash soni. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

-(NSString *)contents
{
    NSArray *rankStirngs = @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
    return [rankStirngs[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit; //because we provide setter AND getter

+ (NSArray *)validSuits
{
    return @[@"♥︎",@"♦︎",@"♠︎",@"♣︎"];
}

-(void)setSuit:(NSString *)suit{
    if([[PlayingCard validSuits] containsObject:suit]){
        _suit = suit;
    }
}

- (NSString *)suit
{
    return _suit ? _suit : @"?";
}















@end
