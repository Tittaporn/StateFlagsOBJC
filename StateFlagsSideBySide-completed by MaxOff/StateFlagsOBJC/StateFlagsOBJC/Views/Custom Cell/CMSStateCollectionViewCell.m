//
//  CMSStateCollectionViewCell.m
//  StateFlagsOBJC
//
//  Created by Cameron Stuart on 9/28/20.
//

#import "CMSStateCollectionViewCell.h"

@implementation CMSStateCollectionViewCell

// Creates our setState (didSet) function for when we set our state
- (void)setState:(CMSState *)state
{
    [self updateViewsWithState:state];
}

// Update our views with the details found on our state
- (void)updateViewsWithState:(CMSState *)state
{
    // Updates our stateNameLabel wiht the states name.
    _stateNameLabel.text = state.name;
    // Updates our statFlagImageView with the image found from the states abbreviation.
    _stateFlagImageView.image = [UIImage imageNamed:state.abbreviation];
}

@end
