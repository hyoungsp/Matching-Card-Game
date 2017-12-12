//
//  Card.swift
//  Concentration
//
//  Created by HYOUNGSUN park on 12/11/17.
//  Copyright © 2017 HYOUNGSUN park. All rights reserved.
//

import Foundation

// no inheritance
// value type - it gets copied

struct Card {
    
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        Card.identifierFactory += 1
        return Card.identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
