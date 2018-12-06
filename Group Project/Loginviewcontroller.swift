//
//  Loginviewcontroller.swift
//  Group Project
//
//  Created by Jack Lawrence (s5070751) on 30/11/2018.
//  Copyright © 2018 Samuel Lawes (s5061657). All rights reserved.
//

import Foundation
import UIKit
//import Firebase


class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    @IBAction func login(_ sender: Any) {
        
        
        guard let email = emailTextField.text, let password = passworldTextField.text else { return }
        
        Auth.auth().signIn(withEmail: email, password: password) { user, error in
            if let _ = user {
                self.dismiss(animated: Bool, completion: (() -> Void)?)
            }
        }
        
    }
}
