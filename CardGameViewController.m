//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Shaii on 7/7/14.
//  Copyright (c) 2014 cs139p. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLable;
@property (nonatomic) int flipCount;
@end

@implementation CardGameViewController

-(void) setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLable.text = [NSString stringWithFormat:@"Flips: %d",self.flipCount];
    NSLog(@"FlipCount Change to %d",self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender
{
  
    if([sender.currentTitle length])
    {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    else
    {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"A♣︎" forState:UIControlStateNormal];
    }

    self.flipCount++;
}


@end
