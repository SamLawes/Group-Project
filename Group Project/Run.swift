import Firebase

class Run {
    
    var date: Timestamp!
    
    init(document: DocumentSnapshot) {
        print(document.data()!)
    }
    
}
