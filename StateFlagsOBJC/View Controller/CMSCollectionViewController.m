//
//  CMSCollectionViewController.m
//  StateFlagsOBJC
//
//  Created by Lee McCormick on 2/23/21.
//

#import "CMSCollectionViewController.h"
#import "CMSStateController.h"
#import "CMSState.h"
#import "CMSStateCollectionViewCell.h"

@interface CMSCollectionViewController()

@end

@implementation CMSCollectionViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma  mark <UICollectionView Data Source>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return  CMSStateController.sharedInstance.states.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CMSStateCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"stateCell" forIndexPath:indexPath];
    CMSState *state = CMSStateController.sharedInstance.states[indexPath.row];
    
   cell.state = state; 
    return cell;
}

@end
