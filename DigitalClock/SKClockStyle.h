//
//  SKClockStyle.h
//  DigitalClock
//
//  Created by Aleksandr Skorokhodov on 20.08.13.
//  Copyright (c) 2013 Aleksandr Skorokhodov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SKClockStyle <NSObject>

- (NSDateFormatterStyle) dateFormatterStyle;

@end
