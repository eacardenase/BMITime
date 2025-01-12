//
//  BNRAsset.m
//  BMITime
//
//  Created by Edwin Cardenas on 7/01/25.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
}

- (void)dealloc
{
    NSLog(@"Deallocating %@", self);
}

@end
