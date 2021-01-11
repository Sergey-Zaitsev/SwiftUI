//
//  DetailVC.swift
//  VK
//
//  Created by Сергей Зайцев on 10.01.2021.
//

import UIKit

class DetailVC: UIViewController {
    
    var image: UIImage?
    var photoDetail = User(nameSurnameFriend: "", imageFriend: "")
    
    @IBOutlet weak var photoFreind: UIImageView!
    
    private func updateUIDetail () {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        photoFreind.image = image
// Указанный ниже код позволяет сделать тень, но получается не понятное поведение Constraints. Картинка меняет свои размеры.
        
        photoFreind.contentMode = .scaleAspectFill
        photoFreind.layer.shadowColor = UIColor.black.cgColor
        photoFreind.layer.shadowOffset = CGSize(width: 10, height: 0)
        photoFreind.layer.shadowRadius = 10
        photoFreind.layer.shadowOpacity = 0.5
        photoFreind.contentMode = .scaleAspectFill
        photoFreind.clipsToBounds = false

        
    }
    
    @IBAction func photoColection(_ sender: UIButton) {
    }
    @IBOutlet weak var like: LikeControl!
    
    @IBAction func click(_ sender: Any) {
        guard let likeControl = sender as? LikeControl else {
            return
        }
        if likeControl.isLike {
            likeControl.isLike = false
            likeControl.countLike -= 1
        } else {
            likeControl.isLike = true
            likeControl.countLike += 1
        }
        
    }
}
