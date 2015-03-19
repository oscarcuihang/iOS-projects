//
//  ShowTechCompsViewController.swift
//  HcfxdTechCompaniesLocator
//
//  Created by Hang Cui on 2/25/15.
//  Copyright (c) 2015 Hang Cui. All rights reserved.
//

import UIKit
import MapKit



class ShowTechCompsViewController: UIViewController {

    var locationData : LocationData?
    
    @IBOutlet weak var compMap: MKMapView!
    
    var regionName : String = ""
    var compLocts : [TechCompName] = []
    var compLoctions : [TechCompName] = []
    @IBOutlet weak var navTitle: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navTitle.title = regionName
        println(regionName)
        compLoctions = compLocts
        var numberOfComp = compLoctions.count
        println(numberOfComp)
        
        var maxlat:CLLocationDegrees = abs(compLoctions[0].lat)
        var minlat:CLLocationDegrees = abs(compLoctions[0].lat)
        var maxlon:CLLocationDegrees = abs(compLoctions[0].lon)
        var minlon:CLLocationDegrees = abs(compLoctions[0].lon)
        
        for (var i = 0; i < numberOfComp; i++) {
            //println(compLoctions[i].company)
            
            var mapAnnotation = MKPointAnnotation()
            var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(compLoctions[i].lat, compLoctions[i].lon)
            mapAnnotation.coordinate = location
            mapAnnotation.title = compLoctions[i].company
            compMap.addAnnotation(mapAnnotation)
            
            if (abs(compLoctions[i].lat) > maxlat) {
                maxlat = abs(compLoctions[i].lat)
            }
            
            if (abs(compLoctions[i].lat) < minlat) {
                minlat = abs(compLoctions[i].lat)
            }
            
            
            if (abs(compLoctions[i].lon) > maxlon) {
                maxlon = abs(compLoctions[i].lon)
            }
            
            if (abs(compLoctions[i].lon) < minlon) {
                minlon = abs(compLoctions[i].lon)
            }
        }
        
        //calc 10% and find the mid point
        var regionLag:CLLocationDegrees = (maxlat + minlat)/2
        var regionLon:CLLocationDegrees = -((maxlon) + (minlon))/2
        
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(regionLag, regionLon)
        
        var latDelta:CLLocationDegrees = (maxlat - minlat) * 1.1
        var lonDelta:CLLocationDegrees = (abs(maxlon) - abs(minlon)) * 1.1
        var finalDelta:CLLocationDegrees?
        if (latDelta > lonDelta){
            finalDelta = latDelta
        }
        else{
            finalDelta = lonDelta

        }
        
        println(latDelta)
        println(lonDelta)

        var span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta:finalDelta!, longitudeDelta:finalDelta!)
        
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        compMap.setRegion(region, animated:true)
        
        /*println(maxlat)
        println(minlat)
        println(maxlon)
        println(minlon)
        println("MapRegionLag\(regionLag)")
        println("MapRegionLon\(regionLon)")
*/
        //println(compLoctions[0].company)
        // Do any additional setup after loading the view.
    }
}

