//
//  Card.h
//  MatchMatch
//
//  Created by user on 27.01.16.
//  Copyright © 2016 user. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Card : NSObject

- (void)setCardValue:(NSString *)value;
- (void)setCardSuit:(NSString *)suit;
- (void)setLabelContents:(NSString *)contents;

+ (NSArray *)valuesOfCards;
+ (NSArray *)suitsOfCards;

@end
