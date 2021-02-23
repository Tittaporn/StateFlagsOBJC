//
//  CMSStateController.m
//  StateFlagsOBJC
//
//  Created by Lee McCormick on 2/23/21.
//

#import "CMSStateController.h"
#import "CMSStateHelper.h"
#import "CMSState.h"

@implementation CMSStateController

+ (CMSStateController *)sharedInstance
{
    static CMSStateController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [CMSStateController new];
    });
    return sharedInstance;
}

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        _states = [self createAllStates];
    }
    return  self;
}

- (NSArray *)createAllStates
{
    NSMutableArray *statesArryToReturn = [[NSMutableArray alloc] init];
    
    for (NSString *stateName in CMSStateHelper.states)
    {
        NSInteger index = [CMSStateHelper.states indexOfObject:stateName];
        
        NSString *abbreviation = [CMSStateHelper.abbreviations objectAtIndex:index];
        
        CMSState *state = [[CMSState alloc] initWithName:stateName abbreviation:abbreviation];
        
        [statesArryToReturn addObject:state];
    }
    return  statesArryToReturn;
}

@end
