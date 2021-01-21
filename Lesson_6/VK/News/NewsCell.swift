//
//  NewsCell.swift
//  VK
//
//  Created by Сергей Зайцев on 21.01.2021.
//

import UIKit

class NewsCell: UITableViewCell {

    @IBOutlet weak var imageGroup: UIImageView! {
        didSet {
            imageGroup.layer.cornerRadius = imageGroup.frame.size.height / 2
            imageGroup.contentMode = .scaleAspectFill
        }
    }
    
    @IBOutlet weak var nameGroup: UILabel!
    @IBOutlet weak var dateGroup: UILabel!
    @IBOutlet weak var textFromGroup: UILabel!
    @IBOutlet weak var imageFromGroup: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(for model: User) {
        
        nameGroup.text = model.nameSurnameFriend
        imageGroup.image = UIImage(named: model.imageFriend.last!)
        dateGroup.text = "\(Int.random(in: 01...31)).\(Int.random(in: 01...12)).\(Int.random(in: 2018...2021))"
        imageFromGroup.image = UIImage(named: model.imageFriend.description)
        textFromGroup.text = "\(model.nameSurnameFriend) обновил(а) фото"
    }
}
