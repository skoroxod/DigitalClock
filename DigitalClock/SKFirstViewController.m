//
//  SKFirstViewController.m
//  DigitalClock
//
//  Created by Aleksandr Skorokhodov on 19.08.13.
//  Copyright (c) 2013 Aleksandr Skorokhodov. All rights reserved.
//

#import "SKFirstViewController.h"
#import "SKClockStyleFactory.h"
#import "SKAppDelegate.h"

@interface SKFirstViewController ()
{
    NSTimer *myTicker;
}
@end

@implementation SKFirstViewController

@synthesize clockText, style;

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    SKAppDelegate *appDelegate = (SKAppDelegate *)[[UIApplication sharedApplication] delegate];
    
    style = [SKClockStyleFactory clockStyleWithId: [appDelegate.clockTheme intValue] ];
    
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
    
    NSDate *date = [NSDate date];
    
    NSDateFormatter *formatter = [style dateFormatter];
    
    clockText.text = [formatter stringFromDate:date];
    
    clockText.textAlignment = [ style textAlignment];
    clockText.textColor = [style textColor];
    clockText.font = [style textFont];
    
    clockText.backgroundColor = [style backgroundColor];
    
}

@end
