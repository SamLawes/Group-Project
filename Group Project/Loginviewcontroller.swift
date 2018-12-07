import Foundation
import UIKit
import Firebase




class LoginViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    @IBAction func login(_ sender: Any) {
        
        
        guard let email = emailTextField.text, let password = password.text else { return }
        
        Auth.auth().signIn(withEmail: email, password: password) { user, error in
            if let _ = user {
                self.dismiss(animated: true, completion: nil)
            }
        }
        
    }
}
