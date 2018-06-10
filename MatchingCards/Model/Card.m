//
//  Card.m
//  MatchingCards
//
//  Created by Akash soni on 6/10/18.
//  Copyright © 2018 Akash soni. All rights reserved.
//

#import "Card.h"

@interface Card()
@end

@implementation Card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards){
        if ([card.contents isEqualToString:self.contents]){
            score = 1;
        }
    }
    return score;
}




@end
