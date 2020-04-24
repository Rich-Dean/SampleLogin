//
//  EmailSignUpVC.swift
//  BDInsurance
//
//  Created by Richard Robinson on 4/23/20.
//  Copyright © 2020 com.Robinson-Tech. All rights reserved.
//

import UIKit

class EmailSignUpVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var firstNameTxt: UITextField!
    @IBOutlet weak var lastNameTxt: UITextField!
    @IBOutlet weak var userEmailTxt: UITextField!
    
    @IBOutlet weak var continueBtn: UIButton!
    
    
    @IBOutlet weak var signUpView: UIView!
    
   var origY = CGFloat()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        firstNameTxt.setUnderLine()
        lastNameTxt.setUnderLine()
        userEmailTxt.setUnderLine()
        
        origY = signUpView.frame.origin.y
        
        //Edit Continue Button
        continueBtn.layer.cornerRadius = 15
        continueBtn.layer.borderWidth = 2
        continueBtn.layer.borderColor = UIColor.placeholderText.cgColor
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        firstNameTxt.delegate = self
        lastNameTxt.delegate = self
        userEmailTxt.delegate = self
        
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        firstNameTxt.endEditing(true)
        lastNameTxt.endEditing(true)
        userEmailTxt.endEditing(true)
        return true
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.signUpView.frame.origin.y == origY {
                self.signUpView.frame.origin.y -= keyboardSize.height
            }
        }
    }

    @objc func keyboardWillHide(notification: NSNotification) {
        if self.signUpView.frame.origin.y != origY {
            self.signUpView.frame.origin.y = origY
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension UITextField {
    func setUnderLine() {
        let border = CALayer()
        let width = CGFloat(0.5)
        border.borderColor = UIColor.lightGray.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width-10, height: self.frame.size.height)
        
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}
