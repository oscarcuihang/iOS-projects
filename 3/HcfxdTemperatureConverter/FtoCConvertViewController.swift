//
//  FtoCConvertViewController.swift
//  HcfxdTemperatureConverter
//
//  Created by Oscar Cui on 2/3/15.
//  Copyright (c) 2015 Hang Cui. All rights reserved.
//

import UIKit

class FtoCConvertViewController: UIViewController {

    @IBOutlet weak var celsius: UILabel!
    @IBOutlet weak var fahrenheit: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertFtoC(sender: AnyObject) {
        var fTemp = fahrenheit.text
        let fTempdouble = (fTemp as NSString).doubleValue
        
        var cTemp = (fTempdouble - 32)/1.8
        var cTempstring = String(format: "%.2f", cTemp)
        celsius.text = cTempstring
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
