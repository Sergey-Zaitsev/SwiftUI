//
//  MyFreindsTableViewCell.swift
//  VK
//
//  Created by Сергей Зайцев on 07.01.2021.
//

import UIKit

class MyFreindsTableViewCell: UITableViewCell {

    @IBOutlet weak var nameSurnameLabel: UILabel!
    @IBOutlet weak var friendImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        friendImage.layer.cornerRadius = friendImage.frame.size.height / 2
//        animationButton.layer.cornerRadius = friendImage.frame.size.height / 2
        friendImage.contentMode = .scaleAspectFill
    }
    
//    @IBAction func animatedImage(_ sender: UIButton) {
//        
//        let animation = CASpringAnimation(keyPath: "transform.scale")
//        
//        animation.fromValue = 0.8
//        animation.toValue = 1
//        animation.stiffness = 200
//        animation.mass = 5
//        animation.duration = 5
//        animation.fillMode = CAMediaTimingFillMode.backwards
//        
//        self.friendImage.layer.add(animation, forKey: nil)
//    }
    
//    func configure (for model: User) {
//
//        nameSurnameLabel.text = model.nameSurnameFriend
//        friendImage.image = UIImage(named: model.imageFriend.first!)
//    }
}
