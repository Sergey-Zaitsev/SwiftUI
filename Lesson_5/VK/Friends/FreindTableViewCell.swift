//
//  FreindTableViewCell.swift
//  VK
//
//  Created by Сергей Зайцев on 10.01.2021.
//

import UIKit


class FreindTableViewCell: UITableViewCell {
    
    @IBOutlet weak var photoImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        photoImage.contentMode = .scaleAspectFill
        photoImage.layer.cornerRadius = photoImage.frame.size.width / 2
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    func setFreind (objectCell: User) {
        self.photoImage.image = UIImage(named: objectCell.imageFriend)
        self.nameLabel.text = objectCell.nameSurnameFriend
        
        
    }
    func configure(for model: User) {

        nameLabel.text = model.nameSurnameFriend
        photoImage.image = UIImage(named: model.imageFriend)
    }
}
