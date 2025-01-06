//
//  main.m
//  BMITime
//
//  Created by Edwin Cardenas on 6/01/25.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRPerson *edwin = [[BNRPerson alloc] init];
        
        edwin.heightInMeters = 1.8;
        edwin.weightInKilos = 96;
        
        float height = edwin.heightInMeters;
        int weight = edwin.weightInKilos;
        NSLog(@"edwin is %.2f meters tall and weighs %d kilograms", height, weight);
        
        float bmi = [edwin bodyMassIndex];
        NSLog(@"edwin has a BMI of %.2f", bmi);
    }
    return 0;
}
