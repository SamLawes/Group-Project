//import mapkit
import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    let location = CLLocationCoordinate2D(latitude: 50.716714, longitude: -1.875833)
    let region = MKCoordinateRegion
}
