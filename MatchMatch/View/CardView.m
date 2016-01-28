//
//  CardView.m
//  MatchMatch
//
//  Created by user on 28.01.16.
//  Copyright © 2016 user. All rights reserved.
//

#import "CardView.h"

@interface CardView ()

@property (weak, nonatomic) IBOutlet UILabel *labelCardContents;
@property (weak, nonatomic) IBOutlet UIButton *buttonTapCard;

@end

@implementation CardView

#pragma mark - Lifecycle

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    
    if (!self.subviews.count) {
        UIView *view = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self.class) owner:self options:nil] firstObject];
        view.frame = self.bounds;
        [self addSubview:view];
        [self.buttonTapCard setBackgroundImage:[UIImage imageNamed:@"card_back"] forState:UIControlStateNormal];
        [self.buttonTapCard setBackgroundImage:[UIImage new] forState:UIControlStateSelected];
    }
    
    return self;
}

- (void)setLabelContents:(NSString *)contents {
    if (!contents) {
        return;
    }
    
    self.labelCardContents.text = contents;
}

- (IBAction)buttonTapCardClicked:(UIButton *)sender {
    self.buttonTapCard.selected = !self.buttonTapCard.selected;
}

@end
