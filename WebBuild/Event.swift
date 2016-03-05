//
//  Event.swift
//  WebBuild
//
//  Created by Stella on 5/3/16.
//  Copyright © 2016 Stella. All rights reserved.
//

import UIKit

class Event: NSObject {
    var name: String
    var desc: String
    var eventURL: String
    
    init (name: String, desc: String, URL: String){
        self.name = name
        self.desc = desc
        self.eventURL = URL
    }
}
