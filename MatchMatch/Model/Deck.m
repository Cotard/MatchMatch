//
//  Deck.m
//  MatchMatch
//
//  Created by user on 27.01.16.
//  Copyright © 2016 user. All rights reserved.
//

#import "Deck.h"
#import "Card.h"

const int kNumberOfCards = 52;

@interface Deck ()

@property (strong, nonatomic) NSArray *cards;

@end

@implementation Deck

- (instancetype)init {
    self = [[Deck alloc] init];
    
    return self;
}

- (NSArray *)cards {
    if (!_cards) {
        _cards = @[];
    }
    return _cards;
}


@end
