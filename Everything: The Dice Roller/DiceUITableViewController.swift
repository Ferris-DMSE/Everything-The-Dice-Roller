//
//  DiceUITableViewController.swift
//  Everything: The Dice Roller
//
//  Created by FSU on 10/13/16.
//  Copyright © 2016 FSU. All rights reserved.
//

import Foundation
import UIKit

class DiceUITableViewController: UITableViewController {
    var diceList = [Dice]();
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return diceList.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "whateverWeWantItToBe", for: indexPath) as! DiceTableViewCell
        let dice = diceList[indexPath.item]
        cell.dice = dice
        return cell;
    }

}
