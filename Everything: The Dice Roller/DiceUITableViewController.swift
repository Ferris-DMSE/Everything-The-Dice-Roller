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
    override func viewDidLoad() {
        super.viewDidLoad()
        self.table.delegate = self
        self.table.dataSource = self
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
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // cell selected code here
    }

}
