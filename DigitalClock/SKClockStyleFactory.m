//
//  SKClockStyleFactory.m
//  DigitalClock
//
//  Created by Aleksandr Skorokhodov on 21.08.13.
//  Copyright (c) 2013 Aleksandr Skorokhodov. All rights reserved.
//

#import "SKClockStyleFactory.h"

@implementation SKClockStyleFactory


+ (id <SKClockStyle>) clockStyleWithId:(int) id {

      if (id == 1) {
          return [[SKClockStyleFirst alloc] init];
      } else if (id == 2) {
          return [[SKClockStyleSecond alloc] init];
      } else {
          return [[SKClockStyleThird alloc] init];
      }
}


@end
