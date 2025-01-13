//
//  BNRAsset.h
//  BMITime
//
//  Created by Edwin Cardenas on 7/01/25.
//

#import <Foundation/Foundation.h>
@class BNREmployee;

NS_ASSUME_NONNULL_BEGIN

@interface BNRAsset : NSObject

@property (nonatomic, copy) NSString *label;
@property (nonatomic) BNREmployee *holder;
@property (nonatomic) unsigned int resaleValue;

@end

NS_ASSUME_NONNULL_END
