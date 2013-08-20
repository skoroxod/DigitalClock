//
//  SKClockStyleThird.m
//  DigitalClock
//
//  Created by Aleksandr Skorokhodov on 21.08.13.
//  Copyright (c) 2013 Aleksandr Skorokhodov. All rights reserved.
//

#import "SKClockStyleThird.h"

@implementation SKClockStyleThird


- (NSDateFormatter*) dateFormatter {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeStyle: NSDateFormatterMediumStyle ];
    
    [formatter setDateFormat:@"d.M.YYYY HH:mm:ss"];    
    return formatter;
}

- (NSTextAlignment) textAlignment {
    return NSTextAlignmentCenter;
}

- (UIColor*) textColor {
    return [UIColor purpleColor];
}

- (int) textSize {
    return 25;
}


- (UIFont*) textFont {
    return [UIFont fontWithName:@"Party Let" size:[self textSize] ];
}


- (UIColor*) backgroundColor {
    return [UIColor colorWithRed:0.25 green:0.75 blue:0.25 alpha:0.3];
}


@end
