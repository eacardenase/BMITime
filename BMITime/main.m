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
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];
        int luckyEmployeeIndex = 5;
        
        for (int i = 0; i < 10; i++) {
            BNREmployee *employee = [[BNREmployee alloc] init];
            
            employee.heightInMeters = 1.8 - (i / 10.0);
            employee.weightInKilos = 96 + i;
            employee.employeeID = i;
            
            [employees addObject:employee];
            
            if (i == 0)
                [executives setObject:employee forKey:@"CEO"];
            
            if (i == 1)
                executives[@"CTO"] = employee;
        }
        
        NSMutableArray *allAssets = [NSMutableArray array];
        
        for (int i = 0; i < 10; i++) {
            BNRAsset *asset = [[BNRAsset alloc] init];
            
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + (i * 17);
            
            NSInteger randomIndex = random() % [employees count];
            
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            [randomEmployee addAsset:asset];
            
            [allAssets addObject:asset];
        }
        
        NSSortDescriptor *voaDesc = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor *eidDesc = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        
        [employees sortUsingDescriptors:@[voaDesc, eidDesc]];
        
        NSLog(@"Employees: %@", employees);
        
        BNREmployee *luckyEmployee = [employees objectAtIndex:luckyEmployeeIndex];
        
        NSLog(@"Lucky employee is %@", luckyEmployee);
        NSLog(@"He has the following assets: %@", luckyEmployee.assets);
        
        [luckyEmployee removeAsset: [luckyEmployee.assets anyObject]];
        
        NSLog(@"Giving up ownership of lucky employee.");
        
        [employees removeObjectAtIndex:luckyEmployeeIndex];
        luckyEmployee = nil;
        
        NSLog(@"allAssets: %@", allAssets);
        
        NSLog(@"executives: %@", executives);
        NSLog(@"CEO: %@", [executives objectForKey:@"CEO"]);
        executives = nil;
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 800"];
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        
        NSLog(@"toBeReclaimed: %@", toBeReclaimed);
        toBeReclaimed = nil;
        
        NSLog(@"Giving up ownership of arrays.");
        
        allAssets = nil;
        employees = nil;
    }
    return 0;
}
