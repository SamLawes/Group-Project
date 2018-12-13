//import mapkit
import UIKit
import Firebase
import MapKit
import CoreMotion
import CoreLocation

class MapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    var motionMagnager = CMMotionManager()
    
    let locationManager = CLLocationManager()
    
    var ref: DocumentReference?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.requestAlwaysAuthorization()
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
        
        mapView.userTrackingMode = .follow
        
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
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        ref = Firestore.firestore().collection("runs").document()
        ref?.setData(["user": "fsugdhdgfidauygdshi"])
        
    }
    

}


extension MapViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first, let ref = ref else { return }
        
        let point = GeoPoint(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        
        let now = Date()
        
        
        ref.setData(["points": [now.toString(dateFormat: "yyyy-MM-dd HH:mm:ss"): point]], merge: true)
        
        
        
        
        
    }
    
}

extension Date
{
    func toString( dateFormat format  : String ) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
    
}
