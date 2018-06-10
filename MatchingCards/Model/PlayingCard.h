//
//  PlayingCard.h
//  MatchingCards
//
//  Created by Akash soni on 6/10/18.
//  Copyright © 2018 Akash soni. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card
@property (strong,nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;



@end
