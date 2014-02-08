//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Identitat S.L. on 30/11/13.
//  Copyright (c) 2013 Identitat. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipsCount;

@property (strong,nonatomic) PlayingCardDeck *theDeck;
@property (strong,nonatomic) Card *actualCard;


@end

@implementation CardGameViewController

-(void)setFlipsCount:(int)flipsCount {
    _flipsCount=flipsCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d",flipsCount];
}

-(void)viewDidLoad{
    
    self.theDeck = [[PlayingCardDeck alloc] init];

}

- (IBAction)touchCardButton:(UIButton *)sender {
    
    
    if ([sender.currentTitle length]) {
        
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        
        [sender setTitle:@"" forState:UIControlStateNormal];
        
    }else{
        
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        
        
        //tiro una carta
        [self setActualCard:[self.theDeck drawRandomCard]];

        
        if ([self actualCard]){
        
            [sender setTitle:[self.actualCard contents] forState:UIControlStateNormal];
            
        }else{
            
            [sender setTitle:@"UPS!" forState:UIControlStateNormal];
            
        }
        
        
    }

    self.flipsCount++;
}

@end
