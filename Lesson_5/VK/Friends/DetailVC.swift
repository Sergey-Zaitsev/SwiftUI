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
