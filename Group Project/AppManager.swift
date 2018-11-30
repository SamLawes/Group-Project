import Foundation
import UIKit
//import Firebase


class AppManager {
    
    
    static let shared = AppManager()
    
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    var appContainer = AppManagerContainer
    
    private init()  {  }
    
    func showApp()  {
        
        var viewController: UIViewController
        
        if Auth.auth().currentUser == nil {
            viewController = storyboard.instantiateInitialViewController(withIdentifier: "LoginViewController")
        } else {
            viewController = storyboard.instantiateInitialViewController(withIdentifier: "MainViewController")
        }
        
        appContainer.present(viewController, animated: true, completion: nil)
        
    }
    
    func logout() {
        try! Auth.auth().signOut()
        
        appContainer.presentedViewContoller?.dismiss(animated: true, completion: nil)
    }
    
    
}
