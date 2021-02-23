//
//  CMSStateController.h
//  StateFlagsOBJC
//
//  Created by Cameron Stuart on 9/28/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CMSStateController : NSObject

// Method to create your shared instance.
+ (CMSStateController *) shared;

// Declares our Source of Truth
@property (nonatomic, strong) NSArray *states;

// Declares that we will have an instance method called createAllStates, which will return an NSArray.
- (NSArray *) createAllStates;

@end

NS_ASSUME_NONNULL_END
