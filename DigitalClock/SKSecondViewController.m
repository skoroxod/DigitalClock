//
//  SKSecondViewController.m
//  DigitalClock
//
//  Created by Aleksandr Skorokhodov on 19.08.13.
//  Copyright (c) 2013 Aleksandr Skorokhodov. All rights reserved.
//

#import "SKSecondViewController.h"
#import "SKAppDelegate.h"

@interface SKSecondViewController ()

@end

@implementation SKSecondViewController


@synthesize picker, pickerData;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    NSArray* array =  [[NSArray alloc] initWithObjects:@"default style",@"orange style", @"cool style", nil];
    self.pickerData = array;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *) pickerView {
    return 1;
}

-(NSInteger) pickerView:(UIPickerView *) pickerView numberOfRowsInComponent:(NSInteger)component {
    return [pickerData count];
}

-(NSString *)pickerView:(UIPickerView *) pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [self.pickerData objectAtIndex:row];
}

-(void)pickerView:(UIPickerView*) pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {

    SKAppDelegate *appDelegate = (SKAppDelegate *)[[UIApplication sharedApplication] delegate];
    
    int select = row;
    appDelegate.clockTheme = [NSNumber numberWithInt:row + 1 ];
}

@end
