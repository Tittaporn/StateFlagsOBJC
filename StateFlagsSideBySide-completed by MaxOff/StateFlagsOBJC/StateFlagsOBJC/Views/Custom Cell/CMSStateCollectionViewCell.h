//
//  CMSStateCollectionViewCell.h
//  StateFlagsOBJC
//
//  Created by Cameron Stuart on 9/28/20.
//

#import <UIKit/UIKit.h>
#import "CMSState.h"

NS_ASSUME_NONNULL_BEGIN

@interface CMSStateCollectionViewCell : UICollectionViewCell

//MARK: Outlets
@property (weak, nonatomic) IBOutlet UIImageView *stateFlagImageView;
@property (weak, nonatomic) IBOutlet UILabel *stateNameLabel;

//MARK: Properties
// Declares property (placeholder) for our state
@property (nonatomic, strong) CMSState *state;

@end

NS_ASSUME_NONNULL_END
