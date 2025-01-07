//
//  BNREmployee.m
//  BMITime
//
//  Created by Edwin Cardenas on 6/01/25.
//

#import "BNREmployee.h"

@implementation BNREmployee

- (double)yearsOfEmployment
{
    if (self.hireDate) {
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        
        return secs / 31557600.0; // seconds per year
    } else {
        return 0;
    }
}

- (float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    
    return normalBMI * 0.9;
}

@end
