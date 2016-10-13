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
    
    init() {
        
    }
    
    
    func Roll() -> Int{
        return Int(arc4random_uniform(size) + 1);
    }
    
    
    
    
    
}
