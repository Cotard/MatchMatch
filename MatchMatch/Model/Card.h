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
- (NSString *)value;
- (NSString *)suit;

+ (NSArray *)valuesOfCards;
+ (NSArray *)suitsOfCards;

@end
