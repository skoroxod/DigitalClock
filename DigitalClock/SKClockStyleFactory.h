//
//  SKClockStyleFactory.h
//  DigitalClock
//
//  Created by Aleksandr Skorokhodov on 21.08.13.
//  Copyright (c) 2013 Aleksandr Skorokhodov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SKClockStyleFirst.h"
#import "SKClockStyleSecond.h"
#import "SKClockStyleThird.h"


@interface SKClockStyleFactory : NSObject

+ (id <SKClockStyle>) clockStyleWithId:(int) id;

@end
