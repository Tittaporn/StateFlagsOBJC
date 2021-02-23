//
//  CMSState.m
//  StateFlagsOBJC
//
//  Created by Lee McCormick on 2/23/21.
//

#import "CMSState.h"

@implementation CMSState

- (instancetype)initWithName:(NSString *)name abbreviation:(NSString *)abbrevition
{
    self = [super init];
    
    // if self != nil
    if (self)
    {
        _name = name;
        _abbreviation = abbrevition;
    }
    
    return  self;
}

@end
