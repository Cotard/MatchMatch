//
//  Card.h
//  MatchMatch
//
//  Created by user on 27.01.16.
//  Copyright © 2016 user. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSArray *valuesOfCards;
@property (strong, nonatomic) NSArray *suitsOfCards;

- (void)setCardValue:(NSString *)value;
- (void)setCardSuit:(NSString *)suit;

@end
