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

@property (strong, nonatomic) NSMutableArray *cards;

@end

@implementation Deck

- (NSArray *)cards {
    if (!_cards) {
        _cards = [NSMutableArray new];
        for (int i = 0; i < [Card suitsOfCards].count; i++) {
            for (int j = 0; j < [Card valuesOfCards].count; j++) {
                Card *card = [Card new];
                [card setCardSuit:[[Card suitsOfCards] objectAtIndex:i]];
                [card setCardValue:[[Card valuesOfCards] objectAtIndex:j]];
                [_cards addObject:card];
            }
        }
    }
    return _cards;
}

- (Card *)randomCard {
    if (!_cards.count) {
        return nil;
    }
    
    return _cards[arc4random() % _cards.count];
}

@end
