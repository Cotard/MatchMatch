//
//  Card.m
//  MatchMatch
//
//  Created by user on 27.01.16.
//  Copyright © 2016 user. All rights reserved.
//

#import "Card.h"

@interface Card ()

@property (strong, nonatomic) NSNumber *value;
@property (strong, nonatomic) NSString *suit;

@end

@implementation Card

- (void)setCardValue:(NSNumber *)value {
    _value = value;
}

- (void)setCardSuit:(NSString *)suit {
    _suit = suit;
}

@end
