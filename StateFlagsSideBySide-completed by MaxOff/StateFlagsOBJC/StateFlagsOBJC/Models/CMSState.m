//
//  CMSState.m
//  StateFlagsOBJC
//
//  Created by Cameron Stuart on 9/28/20.
//

#import "CMSState.h"

@implementation CMSState

// Adds the init method declared in our header file
- (instancetype)initWithName:(NSString *)name
                abbreviation:(NSString *)abbreviation
{
    // Starts the initilization process of our custom class (CMSState) by first initializing it's super class (NSObject)
    self =  [super init];
    
    // Checking to make sure we have successfully initialized our super class (NSObject) -- this is the same thing as if self != nil
    if (self) {
        // Initializing our custom class (CMSState) with our properties.
        _name = name;
        _abbreviation = abbreviation;
    }
    
    // Returning the initialized object (CMSState)
    return self;
}

@end
