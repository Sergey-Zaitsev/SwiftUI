//
//  FreindsTableViewController.swift
//  VK_Alternative
//
//  Created by Сергей Зайцев on 30.12.2020.
//

import UIKit

class GroupTableViewController: UITableViewController {

    var myGroup: [String] = [
    "Сибиряки",
    "Европа",
    "Радио+",
    "Деды морозы",
    "LoL",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myGroup.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? GroupTableViewCell {
            cell.freindLabel.text = myGroup [indexPath.row]
            return cell
        }
        return UITableViewCell()
    }
   
}
