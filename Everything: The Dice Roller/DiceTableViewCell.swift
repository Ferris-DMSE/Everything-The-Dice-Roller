//
//  DiceTableViewCell.swift
//  Everything: The Dice Roller
//
//  Created by FSU on 10/13/16.
//  Copyright © 2016 FSU. All rights reserved.
//

import Foundation
import UIKit

class DiceTableViewCell: UITableViewCell {
    
    private var dice: Dice?;
    private var controller: DiceUITableViewController?;
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var result: UILabel!
    @IBAction func deleteDie(_ sender: AnyObject) {
        controller!.deleteDice(dice: dice!);
    }
    public func setDice(dice: Dice) {
        self.dice = dice;
        self.button.setTitle(String(dice.size), for: .normal)
        setResult(text: String(dice.result))
    }
    
    @IBAction func selected(_ sender: AnyObject) {
        
    }
    
    public func setResult(text: String) {
        self.result.text = text
    }
    
    public func setController(controller: DiceUITableViewController) {
        self.controller = controller
    }
}
