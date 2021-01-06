//
//  FreindsTableViewController.swift
//  VK_Alternative
//
//  Created by Сергей Зайцев on 30.12.2020.
//

import UIKit

class FreindsTableViewController: UITableViewController {

    var friends: [String] = [
    "Ирина Иванова",
    "Света Сергеева",
    "Диана Дмитриевна",
    "Лера Морозова",
    "Полина LoL",
    "Организм",
    "Рената Камалова",
    "Оля Шапиро",
    "Эльза",
    "Галина bi",
    "Лысый",
    "Анна Шапиро"
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friends.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? FrendsTableViewCell {
            cell.myFrendLabel.text = friends[indexPath.row]
            return cell
        }
        return UITableViewCell()
    }
}
