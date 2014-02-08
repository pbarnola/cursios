//
//  Card.m
//  Matchismo
//
//  Created by Identitat S.L. on 30/11/13.
//  Copyright (c) 2013 Identitat. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents])  {
            score = 1;
        }
    }
    return score;
}

@end
