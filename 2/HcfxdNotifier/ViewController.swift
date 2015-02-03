//
//  ViewController.swift
//  HcfxdNotifier
//
//  Created by Oscar Cui on 1/27/15.
//  Copyright (c) 2015 Hang Cui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var message: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func notify(sender: AnyObject) {
        message.text = "You have been notified!"
    }
    
    
    @IBAction func clear(sender: AnyObject) {
        message.text = ""
    }
    
    
}

