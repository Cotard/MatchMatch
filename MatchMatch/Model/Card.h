//
//  Card.h
//  MatchMatch
//
//  Created by user on 27.01.16.
//  Copyright © 2016 user. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

- (void)setCardValue:(NSString *)value;
- (void)setCardSuit:(NSString *)suit;
- (void)setChosen:(BOOL)isChosen;

- (NSString *)value;
- (NSString *)suit;
- (BOOL)isChosen;

+ (NSArray *)valuesOfCards;
+ (NSArray *)suitsOfCards;

@end
