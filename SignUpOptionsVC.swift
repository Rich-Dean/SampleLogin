//
//  SignUpOptionsVC.swift
//  BDInsurance
//
//  Created by Richard Robinson on 4/23/20.
//  Copyright © 2020 com.Robinson-Tech. All rights reserved.
//

import UIKit

class SignUpOptionsVC: UIViewController {

    @IBOutlet weak var signUpWithEmailBtn: UIButton!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        signUpWithEmailBtn.layer.cornerRadius = 16
        signUpWithEmailBtn.layer.borderWidth = 2
        signUpWithEmailBtn.layer.borderColor =  UIColor.systemIndigo.cgColor
        
        
       //Navigation Bar set up
        
       self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = UIColor.clear
        
        
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
