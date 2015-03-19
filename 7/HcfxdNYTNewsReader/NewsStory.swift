//
//  NewsStory.swift
//  HcfxdNYTNewsReader
//
//  Created by Hang Cui on 3/12/15.
//  Copyright (c) 2015 Hang Cui. All rights reserved.
//

import UIKit

class NewsStory: NSObject {

    var main: String = ""
    var web_url: String = ""
    var section_name: String = ""
    
    init(main:String, web_url:String, section_name:String) {
        self.main = main
        self.web_url = web_url
        self.section_name = section_name
    }
    
}
