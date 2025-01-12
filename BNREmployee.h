//
//  BNREmployee.h
//  BMITime
//
//  Created by Edwin Cardenas on 6/01/25.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
@class BNRAsset;

NS_ASSUME_NONNULL_BEGIN

@interface BNREmployee : BNRPerson
{
    NSMutableArray *_assets;
}

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSArray *assets;

- (double)yearsOfEmployment;
- (void)addAsset:(BNRAsset *)a;
- (void)removeAsset:(BNRAsset *)a;
- (unsigned int)valueOfAssets;

@end

NS_ASSUME_NONNULL_END
