//
//  ViewController.swift
//  VK_Alternative
//
//  Created by Сергей Зайцев on 24.12.2020.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var passwordDidField: UITextField!
    @IBOutlet weak var loginDidField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    @objc func keyboardWillShow(notification: Notification) {
        guard let kbSize = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        let insets = UIEdgeInsets(top: 0, left: 0, bottom: kbSize.size.height, right: 0)
        scrollView.contentInset = insets
    }
    @objc func keyboardWillHide (notification: Notification){
        let insets = UIEdgeInsets.zero
        scrollView.contentInset = insets
    }
       @IBAction func bottonTapAutorization(_ sender: UIButton) {
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let result = checkUserCredentials()
        if !result {
            showAlert()
        }
        return result
    }
    func checkUserCredentials () -> Bool {
        loginDidField.text == "admin" && passwordDidField.text == "123"
    }
    func showAlert () {
        let alert = UIAlertController(title: "Ошибка", message: "Вы ввели не верные данные", preferredStyle: .actionSheet)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(alertAction)
        present(alert, animated: true, completion: nil)
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        switch segue.identifier {
//        case "to_second_vc":
//            let destination = segue.destination
//        default:
//            break
//        }
//    }
    
}

