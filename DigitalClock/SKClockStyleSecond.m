//
//  SKClockStyleSecond.m
//  DigitalClock
//
//  Created by Aleksandr Skorokhodov on 20.08.13.
//  Copyright (c) 2013 Aleksandr Skorokhodov. All rights reserved.
//

#import "SKClockStyleSecond.h"

@implementation SKClockStyleSecond

- (NSDateFormatter*) dateFormatter {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeStyle: NSDateFormatterMediumStyle ];
    
    [formatter setDateFormat:@"hh:mm:ss"];    
    return formatter;
}

- (NSTextAlignment) textAlignment {
    return NSTextAlignmentCenter;
}

- (UIColor*) textColor {
    return [UIColor blueColor];
}

- (int) textSize {
    return 56;
}


- (UIFont*) textFont {
    return [UIFont fontWithName:@"Chalkduster" size:[self textSize] ];
}


- (UIColor*) backgroundColor {
    return [UIColor colorWithPatternImage:[UIImage imageNamed:@"orange"]];    
}

@end
