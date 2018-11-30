//import mapkit
import UIKit
<<<<<<< HEAD
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
=======
import CoreMotion
class ViewController: UIViewController {
    
    var motionMagnager = CMMotionManager()
>>>>>>> 112530d842ac749b21cf17f3efb93583ad1a7557
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
<<<<<<< HEAD
    let location = CLLocationCoordinate2D(latitude: 50.716714, longitude: -1.875833)
    let region = MKCoordinateRegion
}
=======

override func viewDidAppear(_ animated: Bool)
{
    motionMagnager.accelerometerUpdateInterval = 0.2
    
    motionMagnager.startAccelerometerUpdates(to: OperationQueue.current!) { (data, error) in
        if let myData = data
        {
            if myData.acceleration.x == 5 {
    }
        print("Run started")
}

}
}
}
>>>>>>> 112530d842ac749b21cf17f3efb93583ad1a7557
