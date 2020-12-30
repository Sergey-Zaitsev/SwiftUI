//
//  MyGroupTableViewController.swift
//  VK_Alternative
//
//  Created by Сергей Зайцев on 30.12.2020.
//

import UIKit

class MyGroupTableViewController: UITableViewController {
    var group: [String] = []
        
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return group.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? MyGroupsTableViewCell {
            cell.myGroupLabel.text = group[indexPath.row]
            return cell
        }
         return UITableViewCell()
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            group.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    @IBAction func unwindFromTableViewController (_ segue: UIStoryboardSegue) {
        guard let tableViewController = segue.source as? GroupTableViewController,
              let indexPath = tableViewController.tableView.indexPathForSelectedRow else { return }
                
        let frend = tableViewController.myGroup[indexPath.row]
        if group.contains(frend) { return }
        group.append(frend)
        tableView.reloadData()
    }
}
