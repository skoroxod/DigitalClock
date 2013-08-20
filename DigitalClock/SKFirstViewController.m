//
//  SKFirstViewController.m
//  DigitalClock
//
//  Created by Aleksandr Skorokhodov on 19.08.13.
//  Copyright (c) 2013 Aleksandr Skorokhodov. All rights reserved.
//

#import "SKFirstViewController.h"
#import "SKClockStyle.h"
#import "SKClockStyleFirst.h"
#import "SKClockStyleSecond.h"
#import "SKAppDelegate.h"

@interface SKFirstViewController ()
{
    NSTimer *myTicker;
}
@end

@implementation SKFirstViewController

@synthesize clockText;

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [self refreshTime];
    [self runTimer];
}


- (void)viewDidDisappear:(BOOL)animated {
    [self stopTimer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) stopTimer {
    [myTicker invalidate];
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
    
    SKAppDelegate *appDelegate = (SKAppDelegate *)[[UIApplication sharedApplication] delegate];
    id <SKClockStyle> style;
    
    if ([appDelegate.clockTheme intValue] == 1) {
        style = [[SKClockStyleFirst alloc] init];
    } else {
        style = [[SKClockStyleSecond alloc] init];
    }
    [formatter setTimeStyle: [style dateFormatterStyle]];
    
    
    clockText.text = [formatter stringFromDate:date];
    
}

@end
