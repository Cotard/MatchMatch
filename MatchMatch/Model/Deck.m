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
@property (copy, nonatomic) NSMutableArray *deckOfCards;

@end

@implementation Deck

- (instancetype)initWithCardsCount:(NSUInteger)count {
    self = [super init];
    
    if (self) {
        _playingCards = [self randomCardsCount:count];
    }
    
    return self;
}

- (NSArray *)deckOfCards {
    if (!_deckOfCards) {
        _deckOfCards = [NSMutableArray new];
        
        for (int i = 0; i < [Card suitsOfCards].count; i++) {
            for (int j = 0; j < [Card valuesOfCards].count; j++) {
                Card *card = [Card new];
                [card setCardSuit:[[Card suitsOfCards] objectAtIndex:i]];
                [card setCardValue:[[Card valuesOfCards] objectAtIndex:j]];
                [_deckOfCards addObject:card];
            }
        }
    }
    return _deckOfCards;
}

- (NSMutableArray *)randomCardsCount:(NSUInteger)count {
    if (!count) {
        return nil;
    }
    
    NSMutableArray *randomCards = [NSMutableArray new];

    for (NSUInteger i = 0; i < count; i++) {
        Card *randomCard = [self randomCard];
        [randomCards addObject:randomCard];
        [self removeCard:randomCard];
    }
    
    return randomCards;
}

#pragma mark - Cards methods

- (void)addCard:(Card *)card {
    if ([self.playingCards containsObject:card]) {
        return;
    }
    
    [self.deckOfCards addObject:card];
}

- (void)removeCard:(Card *)card {
    if (![self.playingCards containsObject:card]) {
        return;
    }
    
    [self.deckOfCards removeObject:card];
}

- (Card *)playingCardForIndex:(NSUInteger)index {
    return [self.playingCards objectAtIndex:index];
}

- (Card *)randomCard {
    int randomIndex = arc4random() % self.deckOfCards.count;
    return self.deckOfCards[randomIndex];
}

@end
