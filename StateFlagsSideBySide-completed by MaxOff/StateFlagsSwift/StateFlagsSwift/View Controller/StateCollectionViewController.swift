//
//  StateCollectionViewController.swift
//  StateFlagsSwift
//
//  Created by Cameron Stuart on 9/28/20.
//

import UIKit

class StateCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return StateController.shared.states.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "stateCell", for: indexPath) as? StateCollectionViewCell else { return UICollectionViewCell() }
    
        let state = StateController.shared.states[indexPath.row]
        cell.state = state
    
        return cell
    }
}
