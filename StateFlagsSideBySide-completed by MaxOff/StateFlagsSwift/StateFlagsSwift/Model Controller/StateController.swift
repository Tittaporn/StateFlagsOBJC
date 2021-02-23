//
//  StateController.swift
//  StateFlagsSwift
//
//  Created by Cameron Stuart on 9/28/20.
//

import Foundation

class StateController {
    
    static let shared = StateController()
    
    var states: [State] = []
    
    init() {
        self.states = createAllStates()
    }
    
    func createAllStates() -> [State] {
        
        var statesArrayToReturn: [State] = []
        
        for stateName in StateHelper.states {
            guard let index = StateHelper.states.firstIndex(of: stateName) else { return [] }
            let abbreviation = StateHelper.abbreviations[index]
            let state = State(name: stateName, abbreviation: abbreviation)
            statesArrayToReturn.append(state)
        }
        
        return statesArrayToReturn
    }
    
}
