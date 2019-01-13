
import Foundation
import UIKit
import Firebase

class MenuViewController: UIViewController, UITableViewDelegate {
//, UITableViewDelegate, UITableViewDataSource
    @IBOutlet weak var tableView: UITableView!
    
    var runs = [Run]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        
//        let ref = Firestore.firestore().collection("users").document(Auth.auth().currentUser!.uid).collection("runs")
//        ref.getDocuments { snapshot, error in
//            self.runs.removeAll()
//            for document in snapshot!.documents {
//                let run = Run(document: document)
//                self.runs.append(run)
//            }
//
//            //self.runs.sort(by: { (Run) -> Bool in
//            //})
//            self.tableView.reloadData()
//
//
//        }
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
//
//        cell.Run = self.runs[indexPath.row]
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection Section:Int ) -> Int {
//        return runs.count
//    }


}
}
