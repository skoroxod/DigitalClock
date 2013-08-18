//
//  SKFirstViewController.m
//  DigitalClock
//
//  Created by Aleksandr Skorokhodov on 19.08.13.
//  Copyright (c) 2013 Aleksandr Skorokhodov. All rights reserved.
//

#import "SKFirstViewController.h"

@interface SKFirstViewController ()
{
    NSTimer *myTicker;

    
}
@end

@implementation SKFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self runTimer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)runTimer {

    myTicker = [NSTimer scheduledTimerWithTimeInterval: 0.5
                                                target: self
                                              selector: @selector(refreshTime)
                                              userInfo: nil
                                               repeats: YES];
    
}

- (void)refreshTime {
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDate *date = [NSDate date];
    
    [formatter setTimeStyle:NSDateFormatterFullStyle];
    
    [_clockText setText:[formatter stringFromDate:date]];
    
}

@end
