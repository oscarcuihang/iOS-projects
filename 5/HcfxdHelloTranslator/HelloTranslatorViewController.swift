//
//  HelloTranslatorViewController.swift
//  HcfxdHelloTranslator
//
//  Created by Hang Cui on 2/12/15.
//  Copyright (c) 2015 Hang Cui. All rights reserved.
//

import UIKit

class HelloTranslatorViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var helloPicker: UIPickerView!
    @IBOutlet weak var helloLabel: UILabel!
    
    let helloPickerData = ["Bosnian", "Catalan", "Croatian", "Danish", "English", "French", "German", "Haitian", "Italian", "Latvian", "Spanish", "Turkish", "Welsh"]
    
    let helloPickerStartIndex = 4
    
    let otherHelloData = ["Zdravo", "Hola", "Bok", "Hej", "Hello", "Bonjour", "Hallo", "Alo", "Ciao", "Sveiki", "Hola", "Merhaba", "Helo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        helloPicker.dataSource = self
        helloPicker.delegate = self
        helloLabel.text = "\(otherHelloData[helloPickerStartIndex])"
    
        helloPicker.selectRow(helloPickerStartIndex, inComponent: 0, animated: false)
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return helloPickerData.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return helloPickerData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let otherHello = "\(otherHelloData[row])"
        helloLabel.text = otherHello
    }
}
