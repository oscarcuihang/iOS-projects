//
//  MapLocationViewController.swift
//  HcfxdMapLocations
//
//  Created by Oscar Cui on 2/5/15.
//  Copyright (c) 2015 Hang Cui. All rights reserved.
//

import UIKit
import MapKit

class MapLocationViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var latitude:CLLocationDegrees = 38.927246
        var longitude:CLLocationDegrees = -92.315984
        var latDelta:CLLocationDegrees = 0.03
        var lonDelta:CLLocationDegrees = 0.03
        var span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta:latDelta, longitudeDelta:lonDelta)
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location,span)
        mapView.setRegion(region, animated:true)
        
        let pinlocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(38.934162,-92.3181099)
        var myanotation = MKPointAnnotation()
        myanotation.coordinate = pinlocation
        myanotation.title = "Tara Apartment"
        myanotation.subtitle = "University of Missouri Student Apartment"
        mapView.addAnnotation(myanotation)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
