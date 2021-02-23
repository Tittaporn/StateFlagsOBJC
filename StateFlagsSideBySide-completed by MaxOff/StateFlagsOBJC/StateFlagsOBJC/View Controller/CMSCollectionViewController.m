//
//  CMSCollectionViewController.m
//  StateFlagsOBJC
//
//  Created by Cameron Stuart on 9/28/20.
//

#import "CMSCollectionViewController.h"
#import "CMSStateController.h"
#import "CMSState.h"
#import "CMSStateCollectionViewCell.h"

@interface CMSCollectionViewController ()

@end

@implementation CMSCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    // Returning the number of states found in our Source of Truth
    return CMSStateController.shared.states.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    // Updating the function to use a custom cell instead of the default UICollectionViewCell, and also updating the reuseIdentifier.
    CMSStateCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"stateCell" forIndexPath:indexPath];
    
    // Getting the state located in our source of truth at the corresponding indexPath.row location.
    CMSState *state = CMSStateController.shared.states[indexPath.row];
    
    // Pass the found state to our cell
    cell.state = state;
    
    return cell;
}

@end
