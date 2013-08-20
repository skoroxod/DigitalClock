//
//  SKClockStyleFirst.m
//  DigitalClock
//
//  Created by Aleksandr Skorokhodov on 20.08.13.
//  Copyright (c) 2013 Aleksandr Skorokhodov. All rights reserved.
//

#import "SKClockStyleFirst.h"

@implementation SKClockStyleFirst


- (NSDateFormatter*) dateFormatter {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeStyle: NSDateFormatterLongStyle ];
    return formatter;
}

- (NSTextAlignment) textAlignment {
    return NSTextAlignmentCenter;
}

- (UIColor*) textColor {
    return nil;
}

- (int) textSize {
    return 18;
}
- (UIFont*) textFont {
    return [UIFont fontWithName:@"Baskerville" size:[self textSize] ];
}

- (UIColor*) backgroundColor {
    return nil;
}

@end
