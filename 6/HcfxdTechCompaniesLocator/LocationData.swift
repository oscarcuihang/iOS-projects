//
//  LocationData.swift
//  HcfxdTechCompaniesLocator
//
//  Created by Hang Cui on 2/19/15.
//  Copyright (c) 2015 Hang Cui. All rights reserved.
//

import UIKit
import MapKit
import Foundation

struct TechCompRegion {
    var regionName: String
    var latitude:CLLocationDegrees
    var longitude:CLLocationDegrees
    var latDelta:CLLocationDegrees
    var lonDelta:CLLocationDegrees
}

struct TechCompName {
    var company: String
    var lat: CLLocationDegrees
    var lon: CLLocationDegrees
}

struct hold {
    var region: String
    var companies: [TechCompName]
}

class LocationData: NSObject {
    
    var listData: [hold]
    //var listRegion : Array?
    
    override init(){

        //listData.append(hold(region: "Austin", companies: [TechCompName(company: "Twisted Pixel Games", lat: 30.227260, lon: -97.758868)]))
        
        listData = [
            hold(
                region: "Austin",
                companies:
                [
                    TechCompName(company: "Twisted Pixel Games", lat: 30.227260, lon: -97.758868),
                    TechCompName(company: "Replay Games", lat: 30.382348, lon: -97.743192 ),
                    TechCompName(company: "Meta 3D Studios", lat: 30.357278, lon: -97.747837 ),
                    TechCompName(company: "Roxor Games", lat: 30.351395, lon: -97.756909 ),
                    TechCompName(company: "Spiceworks", lat: 30.371099, lon: -97.801169 ),
                    TechCompName(company: "LifeSize", lat: 30.260138, lon: -97.791293 ),
                    TechCompName(company: "Asure Software", lat: 30.306275, lon: -97.827773 )
                ]
            ),
            hold(
                region: "Chicago",
                companies:
                [
                    TechCompName(company: "Cars.com", lat: 41.877712, lon: -87.633256 ),
                    TechCompName(company: "Orbitz", lat: 41.882092, lon: -87.640487 ),
                    TechCompName(company: "Braintree", lat: 41.921558, lon: -87.702482 ),
                    TechCompName(company: "GoHealth Insurance", lat: 41.895017, lon: -87.634866 ),
                    TechCompName(company: "Sprout Social", lat: 41.879836, lon: -87.628866 ),
                    TechCompName(company: "Careerbuilder", lat: 41.886140, lon: -87.632753 ),
                    TechCompName(company: "MBuy", lat: 41.896913, lon: -87.643547 )
                ]
            ),
            hold(
                region: "New York City",
                companies:
                [
                    TechCompName( company: "Tumblr", lat: 40.739312, lon: -73.988615 ),
                    TechCompName( company: "MongoDB", lat: 40.757527, lon: -73.987830 ),
                    TechCompName( company: "Everyday Health", lat: 40.727694, lon: -74.007412 ),
                    TechCompName( company: "Etsy Incorporated", lat: 40.702853, lon: -73.989435 ),
                    TechCompName( company: "AppNexus", lat: 40.741773, lon: -73.990998 ),
                    TechCompName( company: "MakerBot", lat: 40.693482, lon: -73.986897 ),
                    TechCompName( company: "Kickstarter", lat: 40.719066, lon: -73.985612 ),
                    TechCompName( company: "Outbrain", lat: 40.736288, lon: -73.996000 ),
                    TechCompName( company: "Smartling", lat: 40.752578, lon: -73.987947 )
                ]
            ),
                    hold(
                        region: "San Francisco",
                        companies:
                        [
                            TechCompName( company: "Zynga", lat: 37.771026, lon: -122.404046 ),
                            TechCompName( company: "SEGA of America", lat: 37.765689, lon: -122.403000 ),
                            TechCompName( company: "BitTorrent Inc", lat: 37.785372, lon: -122.396140 ),
                            TechCompName( company: "OpenDNS", lat: 37.774992, lon: -122.398527 ),
                            TechCompName( company: "Linden Lab", lat: 37.800271, lon: -122.401633 ),
                            TechCompName( company: "Advent Software", lat: 37.771725, lon: -122.402466 ),
                            TechCompName( company: "PC World Online", lat: 37.783002, lon: -122.393176 )
                        ]
                    ),
                            hold(
                                region: "Seattle",
                                companies:
                                [
                                    TechCompName( company: "Amazon", lat: 47.622590, lon: -122.336770 ),
                                    TechCompName( company: "Microsoft", lat: 47.642498, lon: -122.136907 ),
                                    TechCompName( company: "Zillow", lat: 47.607937, lon: -122.338210 ),
                                    TechCompName( company: "F5 Networks", lat: 47.622485, lon: -122.363594 ),
                                    TechCompName( company: "Big Fish Games", lat: 47.620806, lon: -122.361836 ),
                                    TechCompName( company: "PopCap Games", lat: 47.616210, lon: -122.346098 ),
                                    TechCompName( company: "Getty Images", lat: 47.597113, lon: -122.328489 ),
                                    TechCompName( company: "Corbis", lat: 47.603523, lon: -122.332999 ),
                                    TechCompName( company: "Code Systems", lat: 47.628383, lon: -122.342221 )
                                    ]
                                    ),
                                    hold(
                                        region: "Silicon Valley",
                                        companies:
                                        [
                                            TechCompName( company: "Apple", lat: 37.332254, lon: -122.029541 ),
                                            TechCompName( company: "Google", lat: 37.422170, lon: -122.084079 ),
                                            TechCompName( company: "Adobe Systems", lat: 37.330941, lon: -121.894250 ),
                                            TechCompName( company: "Autodesk Inc", lat: 38.005466, lon: -122.530585 ),
                                            TechCompName( company: "Oracle", lat: 37.386586, lon: -122.084005 ),
                                            TechCompName( company: "Mozilla", lat: 37.393252, lon: -122.073447 ),
                                            TechCompName( company: "VMware", lat: 37.401913, lon: -122.143853 ),
                                            TechCompName( company: "SAP", lat: 37.398827, lon: -122.146538 ),
                                            TechCompName( company: "Intuit", lat: 37.430603, lon: -122.096018 ),
                                            TechCompName( company: "eBay", lat: 37.295442, lon: -121.927411 )
                                            ]
                                            )
        ]
       //println(listData[0].companies)
        /*
        println(listData[0].companies[0].company)
        println(listData[0].region)

        println("in LocationData.",(listData.count))
        */
        
    }
}



/*
class LocationData: NSObject, NSURLConnectionDataDelegate {
    
    var hardCodeJSONData:String?
    
    var jsonData:NSData?
    var result:NSDictionary?
    var techRegion: [TechCompRegion]?
    var techLocation: [TechCompName]?

    override init(){
        //super.init()
        hardCodeJSONData = "{\"status\":\"ok\",\"data\":[{\"region\":\"Austin\",\"companies\":[{\"company\":\"Twisted Pixel Games\",\"lat\":30.22726,\"lon\":-97.758868},{\"company\":\"Replay Games\",\"lat\":30.382348,\"lon\":-97.743192},{\"company\":\"Meta 3D Studios\",\"lat\":30.357278,\"lon\":-97.747837},{\"company\":\"Roxor Games\",\"lat\":30.351395,\"lon\":-97.756909},{\"company\":\"Spiceworks\",\"lat\":30.371099,\"lon\":-97.801169},{\"company\":\"LifeSize\",\"lat\":30.260138,\"lon\":-97.791293},{\"company\":\"Asure Software\",\"lat\":30.306275,\"lon\":-97.827773}]},{\"region\":\"Chicago\",\"companies\":[{\"company\":\"Cars.com\",\"lat\":41.877712,\"lon\":-87.633256},{\"company\":\"Orbitz\",\"lat\":41.882092,\"lon\":-87.640487},{\"company\":\"Braintree\",\"lat\":41.921558,\"lon\":-87.702482},{\"company\":\"GoHealth Insurance\",\"lat\":41.895017,\"lon\":-87.634866},{\"company\":\"Sprout Social\",\"lat\":41.879836,\"lon\":-87.628866},{\"company\":\"Careerbuilder\",\"lat\":41.88614,\"lon\":-87.632753},{\"company\":\"MBuy\",\"lat\":41.896913,\"lon\":-87.643547}]},{\"region\":\"New York City\",\"companies\":[{\"company\":\"Tumblr\",\"lat\":40.739312,\"lon\":-73.988615},{\"company\":\"MongoDB\",\"lat\":40.757527,\"lon\":-73.98783},{\"company\":\"Everyday Health\",\"lat\":40.727694,\"lon\":-74.007412},{\"company\":\"Etsy Incorporated\",\"lat\":40.702853,\"lon\":-73.989435},{\"company\":\"AppNexus\",\"lat\":40.741773,\"lon\":-73.990998},{\"company\":\"MakerBot\",\"lat\":40.693482,\"lon\":-73.986897},{\"company\":\"Kickstarter\",\"lat\":40.719066,\"lon\":-73.985612},{\"company\":\"Outbrain\",\"lat\":40.736288,\"lon\":-73.996},{\"company\":\"Smartling\",\"lat\":40.752578,\"lon\":-73.987947}]},{\"region\":\"San Francisco\",\"companies\":[{\"company\":\"Zynga\",\"lat\":37.771026,\"lon\":-122.404046},{\"company\":\"SEGA of America\",\"lat\":37.765689,\"lon\":-122.403},{\"company\":\"BitTorrent Inc\",\"lat\":37.785372,\"lon\":-122.39614},{\"company\":\"OpenDNS\",\"lat\":37.774992,\"lon\":-122.398527},{\"company\":\"Linden Lab\",\"lat\":37.800271,\"lon\":-122.401633},{\"company\":\"Advent Software\",\"lat\":37.771725,\"lon\":-122.402466},{\"company\":\"PC World Online\",\"lat\":37.783002,\"lon\":-122.393176}]},{\"region\":\"Seattle\",\"companies\":[{\"company\":\"Amazon\",\"lat\":47.62259,\"lon\":-122.33677},{\"company\":\"Microsoft\",\"lat\":47.642498,\"lon\":-122.136907},{\"company\":\"Zillow\",\"lat\":47.607937,\"lon\":-122.33821},{\"company\":\"F5 Networks\",\"lat\":47.622485,\"lon\":-122.363594},{\"company\":\"Big Fish Games\",\"lat\":47.620806,\"lon\":-122.361836},{\"company\":\"PopCap Games\",\"lat\":47.61621,\"lon\":-122.346098},{\"company\":\"Getty Images\",\"lat\":47.597113,\"lon\":-122.328489},{\"company\":\"Corbis\",\"lat\":47.603523,\"lon\":-122.332999},{\"company\":\"Code Systems\",\"lat\":47.628383,\"lon\":-122.342221}]},{\"region\":\"Silicon Valley\",\"companies\":[{\"company\":\"Apple\",\"lat\":37.332254,\"lon\":-122.029541},{\"company\":\"Google\",\"lat\":37.42217,\"lon\":-122.084079},{\"company\":\"Adobe Systems\",\"lat\":37.330941,\"lon\":-121.89425},{\"company\":\"Autodesk Inc\",\"lat\":38.005466,\"lon\":-122.530585},{\"company\":\"Oracle\",\"lat\":37.386586,\"lon\":-122.084005},{\"company\":\"Mozilla\",\"lat\":37.393252,\"lon\":-122.073447},{\"company\":\"VMware\",\"lat\":37.401913,\"lon\":-122.143853},{\"company\":\"SAP\",\"lat\":37.398827,\"lon\":-122.146538},{\"company\":\"Intuit\",\"lat\":37.430603,\"lon\":-122.096018},{\"company\":\"eBay\",\"lat\":37.295442,\"lon\":-121.927411}]}]}"
        
        //jsonData = hardCodeJSONData.dataUsingEncoding(NSUTF8StringEncoding)
        
        //var err: NSError?
        //var jsonResult: NSDictionary = NSJSONSerialization.JSONObjectWithData(jsonData!, options: NSJSONReadingOptions.MutableContainers, error: nil) as NSDictionary
        
        let dataDictionary = JSONParseDictionary(hardCodeJSONData!)
        
        let regions = dataDictionary["data"]!["region"]! as? String
        
        println(regions)
    }
    
}

func JSONParseDictionary(jsonString: String) -> [String: AnyObject] {
    if let data = jsonString.dataUsingEncoding(NSUTF8StringEncoding) {
        if let dictionary = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(0), error: nil)  as? [String: AnyObject] {
            return dictionary
        }
    }
    return [String: AnyObject]()
}
*/

/*
func startConnection(){
println("5")

let urlPath: String = "https://babbage.cs.missouri.edu/~hcfxd/it4500/techCompsData.json"
var url = NSURL(string: urlPath)

if (url != nil)
{
var request: NSURLRequest = NSURLRequest(URL: url!)
var connection: NSURLConnection = NSURLConnection(request: request, delegate: self)!
connection.start()
}
}
*/
/*func connection(connection: NSURLConnection, didFailWithError error:NSError)
{
println(error)
}*/

/*func connection(connection: NSURLConnection, didReceiveData data: NSData) {
jsonData = data
var jString = NSString(data:jsonData!, encoding:NSUTF8StringEncoding)
jsonData = data
//println(jsonData)
}

func connectionDidFinishLoading(connection: NSURLConnection) {
println("7")

var err: NSError
var jsonResult: NSDictionary = NSJSONSerialization.JSONObjectWithData(jsonData!, options: NSJSONReadingOptions.MutableContainers, error: nil) as NSDictionary
//println(jsonResult)
result = jsonResult
}*/

/*
class LocationData: NSObject {

    var listAustin: [(String,String,String)]

    //var mapRegions : regionsList[TechRegionData]?
    //var regionsList : [TechRegionData]?
    override init()
    {
        //Austin has 7
        listAustin = [("Twisted Pixel Games","30.227260","-97.758868"),("Replay Games","30.382348","-97.743192"),("Meta 3D Studios","30.357278","-97.747837"),("Roxor Games","30.351395","-97.756909"),("Spiceworks","30.371099","-97.801169"), ("LifeSize","30.260138","-97.791293"), ("Asure Software","30.306275","-97.827773")]
        
        //Chicago has 7
        var listChicago = [("Cars.com","41.877712","-87.633256"), ("Orbitz","41.882092","-87.640487"),("Braintree","41.921558,","-87.702482"),("GoHealth Insurance","41.895017", "-87.634866"),("Sprout Social","41.879836","-87.628866"),("Careerbuilder","41.886140","-87.632753"),("MBuy","41.896913","-87.643547")]
        
        //New York City has 9
        var listNYC = [("Tumblr","40.739312", "-73.988615"),("MongoDB","40.757527", "-73.987830"),("Everyday Health","40.727694", "-74.007412"),("Etsy Incorporated","40.702853", "-73.989435"),("AppNexus","40.741773", "-73.990998"),("MakerBot","40.693482", "-73.986897"),("Kickstarter","40.719066", "-73.985612"),("Outbrain","40.736288", "-73.996000"),("Smartling","40.752578", "-73.987947")]
        
        //SF has 7
        var listSF = [("Zynga","37.771026", "-122.404046"),("SEGA of America","37.765689", "-122.403000"),("BitTorrent Inc","37.785372", "-122.396140"),("OpenDNS","37.774992", "-122.398527"),("Linden Lab","37.800271", "-122.401633"),("Advent Software","37.771725", "-122.402466"),("PC World Online","37.783002", "-122.393176")]
        
        //Seattle has 9
        var listSeattle = [("Amazon","47.622590", "-122.336770"),("Microsoft","47.642498", "-122.136907"),("Zillow","47.607937", "-122.338210"),("F5 Networks","47.622485", "-122.363594"),("Big Fish Games","47.620806", "-122.361836"),("PopCap Games","47.616210", "-122.346098"),("Getty Images","47.597113", "-122.328489"),("Corbis","47.603523", "-122.332999"),("Code Systems","47.628383", "-122.342221")]
        
        //Silicon Valley has 10
        var listSV = [("Apple","37.332254", "-122.029541"),("Google","37.422170", "-122.084079"),("Adobe Systems","37.330941", "-121.894250"),("Autodesk Inc","38.005466", "-122.530585"),("Oracle","37.386586", "-122.084005"),("Mozilla","37.393252", "-122.073447"),("VMware","37.401913", "-122.143853"),("SAP","37.398827", "-122.146538"),("Intuit","37.430603", "-122.096018"),("eBay","37.295442", "-121.927411")]
        
        var regionsList = ["Austin": listAustin, "Chicago":listChicago, "New York City": listNYC, "San Francisco": listSF, "Seattle":listSeattle, "Silicon Valley":listSV]
        
        //var regionsListTest = [listAustin, listChicago, listNYC, listSF,listSeattle, listSV]
    }

}*/