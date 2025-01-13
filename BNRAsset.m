//
//  BNRAsset.m
//  BMITime
//
//  Created by Edwin Cardenas on 7/01/25.
//

#import "BNRAsset.h"
#import "BNREmployee.h"

@implementation BNRAsset

- (NSString *)description
{
    if (self.holder != nil) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>",
                self.label, self.resaleValue, self.holder];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d unassigned>", self.label, self.resaleValue];
    }
}

- (void)dealloc
{
    NSLog(@"Deallocating %@", self);
}

@end
