//
//  NewsStories.swift
//  HcfxdNYTNewsReader
//
//  Created by Hang Cui on 3/12/15.
//  Copyright (c) 2015 Hang Cui. All rights reserved.
//

import UIKit

class NewsStories: NSObject {
   
    var newsies = [NewsStory]()
    
    func load(fromURLString: String, completionHandler: (NewsStories, String?) -> Void) {
        newsies = [NewsStory]()
        if let url = NSURL(string: fromURLString) {
            let urlRequest = NSMutableURLRequest(URL: url)
            let session = NSURLSession.sharedSession()
            let task = session.dataTaskWithRequest(urlRequest, completionHandler: {
                (data, response, error) -> Void in
                if error != nil {
                    dispatch_async(dispatch_get_main_queue(), {
                        completionHandler(self, error.localizedDescription)
                    })
                }
                else {
                    self.parse(data, completionHandler)
                }
            })
            task.resume()
        }
        else {
            dispatch_async(dispatch_get_main_queue(), {
                completionHandler(self, "Invalid URL")
            })
        }
    }
    
    func parse(jsonData: NSData, completionHandler: (NewsStories, String?) -> Void) {
        var jsonError: NSError?
        //println("4")
        if let jsonResult = NSJSONSerialization.JSONObjectWithData(jsonData, options: NSJSONReadingOptions.MutableContainers, error: &jsonError) as? NSDictionary {
            if (jsonResult.count > 0)
            {
                //println("5")
                if let status = jsonResult["status"] as? String {
                    //println("6")
                    if (status == "OK") {
                        //println(jsonResult)
                        
                        if let response = jsonResult["response"] as? NSDictionary {
                            if let docs = response["docs"] as? NSArray {
                                for story in docs {
                                    //println("Story")
                                    if let web_url = story["web_url"] as? NSString {
                                        //println(web_url)
                                        if let headline = story["headline"] as? NSDictionary {
                                            if let main = headline ["main"] as? NSString {
                                                //println(main)
                                                if let section_name = story["section_name"] as? NSString {
                                                    //println(section_name)
                                                    let newNewsStory = NewsStory(main: main, web_url: web_url, section_name: section_name)
                                                    newsies.append(newNewsStory)
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            dispatch_async(dispatch_get_main_queue(), {
                completionHandler(self, nil)
            })
        }
        else {
            if let unwrappedError = jsonError {
                dispatch_async(dispatch_get_main_queue(), {
                    completionHandler(self, "\(unwrappedError)")
                })
            }
        }
    }
}
