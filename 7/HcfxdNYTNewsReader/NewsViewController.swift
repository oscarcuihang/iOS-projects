//
//  NewsViewController.swift
//  HcfxdNYTNewsReader
//
//  Created by Hang Cui on 3/12/15.
//  Copyright (c) 2015 Hang Cui. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController {
   
    @IBOutlet weak var webNewsView: UIWebView!
    @IBOutlet weak var navTitle: UINavigationItem!
    
    var story:NewsStory?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (story != nil) {
            navTitle.title = story!.section_name
        }
        loadAddressURL()
    }

    func loadAddressURL() {
        let requestURL = NSURL (string: story!.web_url)
        let request = NSURLRequest(URL:requestURL!)
        webNewsView.loadRequest(request)
    }
    
    
    
    
    @IBAction func backToList(sender: AnyObject) {
        performSegueWithIdentifier("returnToNewsList", sender: self)
    }
}
