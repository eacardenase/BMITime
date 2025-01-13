//
//  BNREmployee.m
//  BMITime
//
//  Created by Edwin Cardenas on 6/01/25.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

@interface BNREmployee ()
{
    NSMutableSet *_assets;
}

@property (nonatomic) unsigned int officeAlarmCode;

@end

@implementation BNREmployee

- (void)setAssets:(NSSet *)a
{
    _assets = [a mutableCopy];
}

- (NSSet *)assets
{
    return [_assets copy];
}

- (void)addAsset:(BNRAsset *)a
{
    if (!_assets) {
        _assets = [[NSMutableSet alloc] init];
    }
    
    [_assets addObject:a];
    a.holder = self;
}

- (void)removeAsset:(BNRAsset *)a
{
    if(a != nil && [_assets containsObject:a]) {
        [_assets removeObject:a];
    }
}

- (unsigned int)valueOfAssets
{
    unsigned int sum = 0;
    
    for (BNRAsset *asset in _assets) {
        sum += asset.resaleValue;
    }
    
    return sum;
}

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

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>", self.employeeID, self.valueOfAssets];
}

- (void)dealloc
{
    NSLog(@"Deallocating %@", self);
}

@end
