//
//  CMSStateCollectionViewCell.h
//  StateFlagsOBJC
//
//  Created by Lee McCormick on 2/23/21.
//

#import <UIKit/UIKit.h>
#import "CMSState.h"

NS_ASSUME_NONNULL_BEGIN

@interface CMSStateCollectionViewCell : UICollectionViewCell

//MARK: Outlets
@property (weak, nonatomic) IBOutlet UIImageView *stateFlagImageView;
@property (weak, nonatomic) IBOutlet UILabel *stateNameLabel;

//MARK: Properties
@property (nonatomic, strong) CMSState *state;

@end

NS_ASSUME_NONNULL_END
