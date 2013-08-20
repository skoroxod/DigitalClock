//
//  SKFirstViewController.h
//  DigitalClock
//
//  Created by Aleksandr Skorokhodov on 19.08.13.
//  Copyright (c) 2013 Aleksandr Skorokhodov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SKClockStyle.h"

@interface SKFirstViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *clockText;

@property(strong, nonatomic) id <SKClockStyle> style;

@end
