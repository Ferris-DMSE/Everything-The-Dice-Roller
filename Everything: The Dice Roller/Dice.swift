//
//  Dice.swift
//  Everything: The Dice Roller
//
//  Created by FSU on 10/13/16.
//  Copyright © 2016 FSU. All rights reserved.
//

import Foundation


class Dice {
    public var size:UInt32 = 0;
    public var result: UInt32 = 0;
    
    init(size: UInt32) {
        self.size = size;
    }
    
    func Roll() {
        result = UInt32(arc4random_uniform(size) + 1);
    }
    
}
