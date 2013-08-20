//
//  SKSecondViewController.h
//  DigitalClock
//
//  Created by Aleksandr Skorokhodov on 19.08.13.
//  Copyright (c) 2013 Aleksandr Skorokhodov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SKSecondViewController : UIViewController

@property (retain, nonatomic)     IBOutlet UIPickerView* picker;
@property (retain, nonatomic)     NSArray* pickerData;

@end
