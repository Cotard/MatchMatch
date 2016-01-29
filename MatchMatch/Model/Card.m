//
//  Card.m
//  MatchMatch
//
//  Created by user on 27.01.16.
//  Copyright © 2016 user. All rights reserved.
//

#import "Card.h"

@interface Card ()

@property (copy, nonatomic) NSString *value;
@property (copy, nonatomic) NSString *suit;

@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;


@end

@implementation Card

@synthesize value = _value;
@synthesize suit = _suit;
@synthesize chosen = _chosen;

#pragma mark - Setters/Getters

- (void)setCardValue:(NSString *)value {
    _value = value;
}

- (void)setCardSuit:(NSString *)suit {
    _suit = suit;
}

- (void)setChosen:(BOOL)isChosen {
    _chosen = isChosen;
}

- (NSString *)value {
    return _value;
}

- (NSString *)suit {
    return _suit;
}

- (BOOL)isChosen {
    return _chosen;
}

#pragma mark - Class methods

+ (NSArray *)valuesOfCards {
    return @[@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"V",@"Q",@"K",@"A"];;
}

+ (NSArray *)suitsOfCards {
    return @[@"♠",@"♥",@"♦",@"♣"];
}

#pragma mark - Gameplay

- (int)matchWithCard:(Card *)card {
    int score = 0;
    
    if ([card.value isEqualToString:self.value]) {
        score = 5;
    }
    else if ([card.suit isEqualToString:self.suit]) {
        score = 1;
    }
    
    return score;
}


@end
