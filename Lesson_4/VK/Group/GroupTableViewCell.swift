//
//  GroupTableViewCell.swift
//  VK
//
//  Created by Сергей Зайцев on 08.01.2021.
//

import UIKit

class GroupTableViewCell: UITableViewCell {

    
    @IBOutlet weak var emojLabel: UIImageView!
    @IBOutlet weak var nameGroup: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        emojLabel.layer.cornerRadius = emojLabel.frame.size.height / 2
//        animationButton.layer.cornerRadius = friendImage.frame.size.height / 2
        emojLabel.contentMode = .scaleAspectFill
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    func set (object: Group) {
        self.emojLabel.image = UIImage(named: object.groupImage)
        self.nameGroup.text = object.name
        self.descriptionLabel.text = object.description
    }
}
