//
//  Marker (Working and if needed).swift
//  Group Project
//
//  Created by Calum Kirkland (s5110542) on 13/12/2018.
//  Copyright © 2018 Samuel Lawes (s5061657). All rights reserved.
//

//import Foundation
//import UIKit
//import MapKit
//
//final class BournemouthAnnotation: NSObject, MKAnnotation {
//    var coordinate: CLLocationCoordinate2D
//    var title: String?
//    var subtitle: String?
//
//    init(coordinate: CLLocationCoordinate2D, title: String?, subtitle: String?) {
//        self.coordinate = coordinate
//        self.title = title
//        self.subtitle = subtitle
//
//        super.init()
//
//    }
//
//}
//
//
//class ViewController: UIViewController {
//
//
//    @IBOutlet weak var mapView: MKMapView!
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//        mapView.register(MKMarkerAnnotationView.self,
//                         forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
//        let mitCoordinate = CLLocationCoordinate2DMake(50.722213, -1.865971)
//        let mitAnnotation = BournemouthAnnotation(coordinate: mitCoordinate, title: "KFC", subtitle: "Fast food place")
//
//        mapView.addAnnotation(mitAnnotation)
//
//    }
//
//
//}
//extension ViewController: MKMapViewDelegate {
//    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
//        if let BournemouthAnnotationView = mapView.dequeueReusableAnnotationView(withIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier) as?
//            MKMarkerAnnotationView {
//            BournemouthAnnotationView.animatesWhenAdded = true
//            BournemouthAnnotationView.titleVisibility = .adaptive
//            BournemouthAnnotationView.titleVisibility = .adaptive
//
//            return BournemouthAnnotationView
//        }
//        return nil
//
//    }
//}
