//
//  DiceUITableViewController.swift
//  Everything: The Dice Roller
//
//  Created by FSU on 10/13/16.
//  Copyright © 2016 FSU. All rights reserved.
//

import Foundation
import UIKit

class DiceUITableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var diceList : [Dice] = [
        Dice(size: 10),
        Dice(size: 6)
    ];
    
    @IBAction func roll(_ sender: AnyObject) {
        for die in diceList {
            die.Roll()
        }
        table.reloadData()
    }
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var newDie: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.table.delegate = self
        self.table.dataSource = self
    }
    
    @IBAction func addDieKeyboard(_ sender: AnyObject) {
        _addDie()
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return diceList.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "DiceCell", for: indexPath) as! DiceTableViewCell
        let dice = diceList[indexPath.item]
        //cell.dice = dice
        cell.setDice(dice: dice)
        cell.setController(controller: self)
        return cell;
    }
    @IBAction func addDie(_ sender: AnyObject) {
        _addDie()
    }
    
    func _addDie() {
        if let size = UInt32(self.newDie.text!) {
            let die = Dice(size: size)
            newDie.text = ""
            newDie.endEditing(true)
            diceList.append(die)
            table.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // cell selected code here
    }
    
    public func deleteDice(dice: Dice) {
        let arr : Array = diceList
        
        if let index = arr.index(of: dice) {
            diceList.remove(at: index)
        }
        self.table.reloadData()
    }

}
