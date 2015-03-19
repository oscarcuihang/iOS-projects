//
//  NewsListTableViewController.swift
//  HcfxdNYTNewsReader
//
//  Created by Hang Cui on 3/12/15.
//  Copyright (c) 2015 Hang Cui. All rights reserved.
//

import UIKit

class NewsListTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    let urlString = "http://api.nytimes.com/svc/search/v2/articlesearch.json?q=apple&api-key=4446754ee2fd60086d47a76afa960234:9:62964833"

    @IBOutlet weak var newsListTable: UITableView!
    
    var newsStories: NewsStories = NewsStories()
    var selectedNewsStory: NewsStory?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("1")
        
        newsStories.load(urlString) {
            (newsies, errorString) -> Void in
            if let unwrappedErrorString = errorString {
                println(unwrappedErrorString)
            }
            else {
                self.newsListTable.reloadData()
                println("3")
            }
        }
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsStories.newsies.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellNews = tableView.dequeueReusableCellWithIdentifier("cellNews", forIndexPath: indexPath) as UITableViewCell
        cellNews.textLabel?.text = newsStories.newsies[indexPath.row].main
        cellNews.detailTextLabel?.text = newsStories.newsies[indexPath.row].section_name
        return cellNews
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
       selectedNewsStory = newsStories.newsies[indexPath.row]
        performSegueWithIdentifier("showNewsStory", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destinationViewController = segue.destinationViewController as NewsViewController
        destinationViewController.story = selectedNewsStory
    }
    
    
    @IBAction func returnToNewsList(segue: UIStoryboardSegue) {
        
    }

}
