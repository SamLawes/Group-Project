//import mapkit
import UIKit

import MapKit
import CoreMotion

class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    var motionMagnager = CMMotionManager()
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    override func viewDidAppear(_ animated: Bool){
        motionMagnager.accelerometerUpdateInterval = 0.2
        
        motionMagnager.startAccelerometerUpdates(to: OperationQueue.current!) { data, error in
            if let myData = data {
                if myData.acceleration.x == 5 {
                }
            }
        }
        
    }

}
