//
//  BNRPerson.m
//  BMITime
//
//  Created by Edwin Cardenas on 6/01/25.
//

#import "BNRPerson.h"

@implementation BNRPerson

- (float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
