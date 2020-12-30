//
//  MyFrendCollectionViewController.swift
//  VK_Alternative
//
//  Created by Сергей Зайцев on 30.12.2020.
//

import UIKit


class MyFrendCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? MyFreindCollectionViewCell {
            cell.nameLabel.text = "\(indexPath.row)"
            cell.infoLabel.text = "\(indexPath.row)"
            
            
            return cell
        }
    
        // Configure the cell
    
        return UICollectionViewCell()
    }
}
