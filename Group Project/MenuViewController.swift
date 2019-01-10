
import Foundation
import UIKit
import Firebase

class MenuViewController: UIViewController, UITableViewDelegate {
    
    
    @IBOutlet weak var MenuTable: UITableView!
    
    var runs = [Run]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
//        tableView.separatorColor = UIColor(white: 0.95, alpha: 1)
//        tableView.delegate = self
       loadRuns()
    }
    
    func loadRuns() {
        
        let ref = Firestore.firestore().collection("users").document(Auth.auth().currentUser!.uid).collection("runs")
        ref.getDocuments { snapshot, error in
            for document in snapshot!.documents {
                let run = Run(document: document)
                self.runs.append(run)
                self.MenuTable.reloadData()
            }
        }
    }
    
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection Section:Int ) -> Int {
//        return 8
//    }
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//    
    
}
