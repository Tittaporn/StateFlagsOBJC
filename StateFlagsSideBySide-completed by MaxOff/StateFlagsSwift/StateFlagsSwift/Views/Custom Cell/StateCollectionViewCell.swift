//
//  StateCollectionViewCell.swift
//  StateFlagsSwift
//
//  Created by Cameron Stuart on 9/28/20.
//

import UIKit

class StateCollectionViewCell: UICollectionViewCell {
    
    //MARK: - Outlets
    @IBOutlet weak var stateFlagImageView: UIImageView!
    @IBOutlet weak var stateNameLabel: UILabel!
    
    //MARK: - Properties
    var state: State? {
        didSet {
            updateViews()
        }
    }
    
    //MARK: - Helper Functions
    func updateViews() {
        guard let state = state else { return }
        stateNameLabel.text = state.name
        stateFlagImageView.image = UIImage(named: state.abbreviation)
    }
}
