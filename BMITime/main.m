//
//  main.m
//  BMITime
//
//  Created by Edwin Cardenas on 6/01/25.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNREmployee *edwin = [[BNREmployee alloc] init];
        
        edwin.heightInMeters = 1.8;
        edwin.weightInKilos = 96;
        edwin.employeeID = 20;
        edwin.hireDate = [NSDate dateWithNaturalLanguageString:@"Dec 23rd, 2024"];
        
        float height = edwin.heightInMeters;
        int weight = edwin.weightInKilos;
        NSLog(@"edwin is %.2f meters tall and weighs %d kilograms", height, weight);
        NSLog(@"Employee %u hired on %@", edwin.employeeID, edwin.hireDate);
        
        float bmi = [edwin bodyMassIndex];
        double years = [edwin yearsOfEmployment];
        NSLog(@"BMI of %.2f, has worked with us for %.2f years.", bmi, years);
    }
    return 0;
}
