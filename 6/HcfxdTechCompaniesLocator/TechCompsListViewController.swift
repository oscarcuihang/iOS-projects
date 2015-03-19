//
//  TechCompsListViewController.swift
//  HcfxdTechCompaniesLocator
//
//  Created by Hang Cui on 2/19/15.
//  Copyright (c) 2015 Hang Cui. All rights reserved.
//

import UIKit
import MapKit

class TechCompsListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    //let techComps = LocationData()
    
    var locationData : LocationData?
    
    let prototypeCellIdentifier = "regioncell"
    
    var numberOfRegion : Int?
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var listData = LocationData().listData
        numberOfRegion = listData.count
        //println(listData.count)
        return listData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let regioncell = tableView.dequeueReusableCellWithIdentifier(prototypeCellIdentifier) as UITableViewCell
        let (regionText, regionNumber) = (LocationData().listData[indexPath.row].region, LocationData().listData[indexPath.row].companies.count)
        regioncell.textLabel?.text = regionText
        regioncell.detailTextLabel?.text = "\(regionNumber) Companies"
        return regioncell
    }
    
    
    var region = ""
    var company : [TechCompName]?
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        //println(LocationData().listData[indexPath.row].region)
        region = LocationData().listData[indexPath.row].region
        company = LocationData().listData[indexPath.row].companies
        performSegueWithIdentifier("showComp", sender: self)
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       // println("prepareForSegue in 1 view")
        var mapView : ShowTechCompsViewController = segue.destinationViewController as ShowTechCompsViewController
        
        mapView.regionName = region
        mapView.compLocts = company!
    }
        
        
    /*
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        println(LocationData().listData[indexPath.row].region)
        regiontest = LocationData().listData[indexPath.row].region
        //self.performSegueWithIdentifier("showComp", sender: tableView)


    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        println("prepareForSegue in 1 view")
        var mapView : ShowTechCompsViewController = segue.destinationViewController as ShowTechCompsViewController
        
        mapView.regionName = "123"
    }
    */

    
    @IBAction func backToList(segue:UIStoryboardSegue) {
        println("back")
    }
    
}
