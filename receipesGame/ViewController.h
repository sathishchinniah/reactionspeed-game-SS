//
//  ViewController.h
//  receipesGame
//
//  Created by Sathish Chinniah on 15/07/15.
//  Copyright (c) 2015 paul solt. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, retain) NSTimer *timer;
@property float timeNumber;
@property float bestTime;

@property (nonatomic, retain) IBOutlet UILabel *timeNumberLabel;
@property (nonatomic, retain) IBOutlet UIButton *stopButton;
@property (nonatomic, retain) IBOutlet UIButton *startButton;

@end