//
//  PhoneNumberVC.swift
//  BDInsurance
//
//  Created by Richard Robinson on 4/23/20.
//  Copyright © 2020 com.Robinson-Tech. All rights reserved.
//

import UIKit

class PhoneNumberVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var phoneNumberTxt: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        phoneNumberTxt.setUnderLine()
        phoneNumberTxt.delegate = self
        
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       
        phoneNumberTxt.endEditing(true)
        return true
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
