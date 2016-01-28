//
//  PlayingGameViewController.m
//  MatchMatch
//
//  Created by user on 27.01.16.
//  Copyright © 2016 user. All rights reserved.
//

#import "PlayingGameViewController.h"
#import "Deck.h"
#import "Card.h"
#import "CardView.h"

@interface PlayingGameViewController ()

@property (strong, nonatomic) IBOutletCollection(CardView) NSArray *playingCards;

@property (strong, nonatomic) Deck *playingDeck;

@end

@implementation PlayingGameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.playingDeck = [[Deck alloc] initWithCardsCount:self.playingCards.count];
    
    for (int i = 0; i < self.playingCards.count; i++) {
        CardView *cardView = [self.playingCards objectAtIndex:i];
        Card *card = [self.playingDeck playingCardForIndex:i];
        [cardView setLabelContents:[card.suit stringByAppendingString:card.value]];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
