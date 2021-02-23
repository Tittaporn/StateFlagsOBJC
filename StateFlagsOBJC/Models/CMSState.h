//
//  CMSState.h
//  StateFlagsOBJC
//
//  Created by Lee McCormick on 2/23/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CMSState : NSObject

@property(nonatomic, copy) NSString *name;
@property(nonatomic, copy, readonly) NSString *abbreviation;

-(instancetype) initWithName: (NSString *) name
                abbreviation: (NSString *)abbrevition;

@end

NS_ASSUME_NONNULL_END
