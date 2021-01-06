//
//  FreindTableViewCell.swift
//  VK_Alternative
//
//  Created by Сергей Зайцев on 30.12.2020.
//

import UIKit

class GroupTableViewCell: UITableViewCell {

    @IBOutlet weak var freindLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
