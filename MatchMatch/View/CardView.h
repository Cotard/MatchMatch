//
//  CardView.h
//  MatchMatch
//
//  Created by user on 28.01.16.
//  Copyright © 2016 user. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CardViewDelegate;

@interface CardView : UIView

@property (weak, nonatomic) id <CardViewDelegate> delegate;

- (void)setLabelContents:(NSString *)contents;
- (void)setButtonTapCardSelected:(BOOL)isSelected;

@end

@protocol CardViewDelegate <NSObject>
- (void)cardViewDidClick:(CardView *)cardView;
@end

