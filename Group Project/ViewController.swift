//import mapkit
import UIKit
import CoreMotion
class ViewController: UIViewController {
    
    var motionMagnager = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

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
