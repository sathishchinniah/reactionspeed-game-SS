//
//  ViewController.m
//  receipesGame
//
//  Created by Sathish Chinniah on 15/07/15.
//  Copyright (c) 2015 paul solt. All rights reserved.
//


#import "ViewController.h"
@interface ViewController ()
@end
@implementation ViewController
@synthesize timer, timeNumber, timeNumberLabel, startButton, stopButton, bestTime;
- (IBAction)startGame {
    startButton.hidden = YES;
    int randomNumber;
    randomNumber = arc4random() %5;
    switch (randomNumber) {
        case 0: timeNumberLabel.text = @"ready?";
            [self performSelector:@selector(startTimer) withObject:self afterDelay:1.0f]; break;
        case 1: timeNumberLabel.text = @"ready?";
            [self performSelector:@selector(startTimer) withObject:self afterDelay:2.0f]; break;
        case 2: timeNumberLabel.text = @"ready?";
            [self performSelector:@selector(startTimer) withObject:self afterDelay:3.0f]; break;
        case 3: timeNumberLabel.text = @"ready?";
            [self performSelector:@selector(startTimer) withObject:self afterDelay:4.0f]; break;
        case 4: timeNumberLabel.text = @"ready?";
            [self performSelector:@selector(startTimer) withObject:self afterDelay:5.0f]; break;
        default: exit(0); break;
    }
}

- (IBAction)player1 {
    stopButton.hidden = YES; startButton.hidden = NO;
    [timer invalidate];
    if (bestTime == 0) { bestTime = 10; }
    if (bestTime > timeNumber) { bestTime = timeNumber; }
    
    UIAlertView *yourTime = [[UIAlertView alloc] initWithTitle:@"Your reaction time" message:[[NSString alloc] initWithFormat:@"Your time: %.3f \nBest time: %.3f \nOnly %.3f away from your best time!",timeNumber, bestTime, timeNumber - bestTime] delegate:self cancelButtonTitle:@"Try again" otherButtonTitles:nil];
    [yourTime show];
    timeNumberLabel.text = @"Reaction speed test";
    timeNumber = 0;
}

- (IBAction)player2 {
    // next episode (online: 5 likes on previous tutorial)
}
- (IBAction)clickedTooEarly {
    // next episode (online: 5 likes on previous tutorial)
}

- (void)startTimer {
    stopButton.hidden = NO;
    timer = [NSTimer scheduledTimerWithTimeInterval:0.001 target:self selector:@selector(counting) userInfo:nil repeats:YES];
}

- (void)counting {
    timeNumber +=0.001;
    timeNumberLabel.text = [[NSString alloc] initWithFormat:@"%.3f", timeNumber];
}

- (void)viewDidLoad {
    stopButton.hidden = YES; startButton.hidden = NO;
    timeNumberLabel.text = @"Reaction speed test";
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

