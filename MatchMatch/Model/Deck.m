//
//  Deck.m
//  MatchMatch
//
//  Created by user on 27.01.16.
//  Copyright © 2016 user. All rights reserved.
//

#import "Deck.h"
#import "Card.h"

@interface Deck ()

@property (strong, nonatomic) NSMutableArray *playingCards;
@property (copy, nonatomic) NSArray *deckOfCards;

@end

@implementation Deck

- (NSArray *)deckOfCards {
    if (!_deckOfCards) {
        NSMutableArray *cards = [NSMutableArray new];
        for (int i = 0; i < [Card suitsOfCards].count; i++) {
            for (int j = 0; j < [Card valuesOfCards].count; j++) {
                Card *card = [Card new];
                [card setCardSuit:[[Card suitsOfCards] objectAtIndex:i]];
                [card setCardValue:[[Card valuesOfCards] objectAtIndex:j]];
                [cards addObject:card];
            }
        }
        
        _deckOfCards = [NSArray arrayWithArray:cards];
    }
    return _deckOfCards;
}

- (Card *)randomCard {
    int randomIndex = arc4random() % _deckOfCards.count;
    return _deckOfCards[randomIndex];
}

- (void)initWithCardsCount:(NSUInteger)count {
    if (!count) {
        return;
    }
    
    _playingCards = [NSMutableArray new];

    for (NSUInteger i = 0; i < count; i++) {
        [_playingCards addObject:[self randomCard]];
    }
}

@end
