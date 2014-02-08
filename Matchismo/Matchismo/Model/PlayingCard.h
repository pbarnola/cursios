//
//  PlayingCard.h
//  Matchismo
//
//  Created by Identitat S.L. on 30/11/13.
//  Copyright (c) 2013 Identitat. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong,nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSArray *)rankStrings;
+ (NSUInteger)maxRank;


@end
