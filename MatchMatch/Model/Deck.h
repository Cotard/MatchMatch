//
//  Deck.h
//  MatchMatch
//
//  Created by user on 27.01.16.
//  Copyright © 2016 user. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Card;

@interface Deck : NSObject

- (instancetype)initWithCardsCount:(NSUInteger)count;
- (Card *)playingCardForIndex:(NSUInteger)index;

@end
