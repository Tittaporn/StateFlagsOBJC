//
//  CMSStateController.m
//  StateFlagsOBJC
//
//  Created by Cameron Stuart on 9/28/20.
//

#import "CMSStateController.h"
#import "CMSStateHelper.h"
#import "CMSState.h"

@implementation CMSStateController

// Implements our shared method, which will return a shared instance of a CMSStateController
+ (CMSStateController *)shared
{
    // Creates a CMSStateController called shared
    static CMSStateController *shared = nil;
    // Creates a dispatch_once token
    static dispatch_once_t onceToken;
    // Implements the dispatch_once method with our dispatch_once_token (this assures this method will only run once), and upon completion we set our shared property to a new CMSStateController
    dispatch_once(&onceToken, ^{
        shared = [CMSStateController new];
    });
    
    // Returns that set shared instance
    return shared;
}

// Adds functionality to the default init method on our class
- (instancetype)init
{
    self = [super init];
    if (self) {
        // Set our states array to the value returned from createAllStates
        _states = [self createAllStates];
    }
    return self;
}

// Implement the createAllStates function
- (NSArray *)createAllStates
{
    // Creating a placeholder array for our states to live as we create them.
    /// Set the type  - Give it a name - set it equal to an initialized NSMutable array that has had space allocated for it.
    NSMutableArray *statesArrayToReturn = [[NSMutableArray alloc] init];
    
    // Iterate through each state name in our CMSStateHelper.states
    for (NSString *stateName in CMSStateHelper.states)
    {
        // Find the index of our specific stateName
        NSInteger index = [CMSStateHelper.states indexOfObject:stateName];
        // Use that index to go to our CMSStateHelper.abbreviations and find the correct abbreviation
        NSString *abbreviation = [CMSStateHelper.abbreviations objectAtIndex:index];
        // Create a state with the stateName (whichever state we are on in our for-in loop) and found abbreviation.
        /// Set the type - Give it a name - set it equal to an initiialzed state which is using our stateName and abbreviation, after we have allocated space in memory for our state.
        CMSState *state = [[CMSState alloc] initWithName:stateName abbreviation:abbreviation];
        // Append the state to our statesArrayToReturn
        [statesArrayToReturn addObject:state];
    }
    
    // Return our completed statesArrayToReturn
    return statesArrayToReturn;
    
}

@end
