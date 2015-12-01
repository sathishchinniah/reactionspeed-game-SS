# reactionspeed-game-SS
Get your alert(game wise)

# Screenshot

![rs1](https://cloud.githubusercontent.com/assets/12906173/11507093/71bdd558-9878-11e5-9836-92301f6da6c7.png)
![rs2](https://cloud.githubusercontent.com/assets/12906173/11507097/7376998e-9878-11e5-801f-ed4fecef711f.png)
![rs3](https://cloud.githubusercontent.com/assets/12906173/11507100/747e6302-9878-11e5-941b-34afa0a1dad6.png)

# Code

```
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
- (void)startTimer {
    stopButton.hidden = NO;
    timer = [NSTimer scheduledTimerWithTimeInterval:0.001 target:self selector:@selector(counting) userInfo:nil repeats:YES];
}

- (void)counting {
    timeNumber +=0.001;
    timeNumberLabel.text = [[NSString alloc] initWithFormat:@"%.3f", timeNumber];
}
```

# Description

It's like when we start the game the timer will rapidely run then after press stop button. A UIAlert will pop up with the score had in last time comparision with new record.


