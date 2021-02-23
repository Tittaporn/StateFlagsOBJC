//
//  CMSStateCollectionViewCell.m
//  StateFlagsOBJC
//
//  Created by Lee McCormick on 2/23/21.
//

#import "CMSStateCollectionViewCell.h"

@implementation CMSStateCollectionViewCell

// didSet == setState in OBJC
- (void)setState:(CMSState *)state
{
    [self updateViewsWithState:state];
}

- (void)updateViewsWithState:(CMSState *)state
{
    _stateNameLabel.text = state.name;
    _stateFlagImageView.image = [UIImage imageNamed:state.abbreviation];
}

@end
