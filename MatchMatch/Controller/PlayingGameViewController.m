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

@interface PlayingGameViewController () <CardViewDelegate>

@property (strong, nonatomic) IBOutletCollection(CardView) NSArray *playingCards;
@property (strong, nonatomic) NSMutableArray *cardViews;
@property (strong, nonatomic) Deck *playingDeck;

@end

@implementation PlayingGameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    for (int i = 0; i < self.playingCards.count; i++) {
        CardView *cardView = [self.playingCards objectAtIndex:i];
        cardView.delegate = self;
        Card *card = [self.playingDeck playingCardForIndex:i];
        [self.cardViews addObject:cardView];
        [cardView setLabelContents:[card.suit stringByAppendingString:card.value]];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Getters 

- (Deck *)playingDeck {
    if (!_playingDeck) {
        _playingDeck = [[Deck alloc] initWithCardsCount:self.playingCards.count];
    }
    return _playingDeck;
}

- (NSMutableArray *)cardViews {
    if (!_cardViews) {
        _cardViews = [NSMutableArray new];
    }
    return _cardViews;
}

#pragma mark - CardViewDelegate

- (void)cardViewDidClick:(CardView *)cardView {
    NSUInteger indexOfCardView = [self.cardViews indexOfObject:cardView];
    Card *card = [self.playingDeck playingCardForIndex:indexOfCardView];
    
    BOOL isChosen = !card.isChosen;
    [card setChosen:isChosen];
    [cardView setButtonTapCardSelected:isChosen];
}

@end
