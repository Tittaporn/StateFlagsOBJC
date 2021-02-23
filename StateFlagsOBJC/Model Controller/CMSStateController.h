//
//  CMSStateController.h
//  StateFlagsOBJC
//
//  Created by Lee McCormick on 2/23/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CMSStateController : NSObject

+ (CMSStateController *) sharedInstance;

@property (nonatomic, strong) NSArray *states;

- (NSArray *) createAllStates; 

@end

NS_ASSUME_NONNULL_END
