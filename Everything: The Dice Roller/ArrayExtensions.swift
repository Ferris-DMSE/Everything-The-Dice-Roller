//
//  ArrayExtensions.swift
//  Everything: The Dice Roller
//
//  Created by FSU on 10/18/16.
//  Copyright © 2016 FSU. All rights reserved.
//

import Foundation

extension Array where Element: Equatable {
    
    // Remove first collection element that is equal to the given `object`:
    mutating func remove(object: Element) {
        if let index = index(of: object) {
            remove(at: index)
        }
    }
}
