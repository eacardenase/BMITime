//
//  main.m
//  BMITime
//
//  Created by Edwin Cardenas on 6/01/25.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *employees = [NSMutableArray array];
        
        for (int i = 0; i < 10; i++) {
            BNREmployee *edwin = [[BNREmployee alloc] init];
            
            edwin.heightInMeters = 1.8 - (i / 10.0);
            edwin.weightInKilos = 96 + i;
            edwin.employeeID = i;
            
            [employees addObject:edwin];
        }
        
        for (int i = 0; i < 10; i++) {
            BNRAsset *asset = [[BNRAsset alloc] init];
            
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + (i * 17);
            
            NSInteger randomIndex = random() % [employees count];
            
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            [randomEmployee addAsset:asset];
        }
        
        NSLog(@"Employees: %@", employees);
        
        NSLog(@"Giving up ownership of one employee.");
        
        [employees removeObjectAtIndex:5];
        
        NSLog(@"Giving up ownership of arrays.");
        
        employees = nil;
    }
    return 0;
}
