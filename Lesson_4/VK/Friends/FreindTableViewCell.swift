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
        
        
// Тень не выходит, но вроде все так. В чем может быть проблема?
        
//        photoImage.layer.shadowColor = UIColor.black.cgColor
//        photoImage.layer.shadowOffset = CGSize(width: 10, height: 0)
//        photoImage.layer.shadowRadius = 10
//        photoImage.layer.shadowOpacity = 0.5
//        photoImage.clipsToBounds = false
        
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
