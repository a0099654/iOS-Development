//
//  ViewController.swift
//  WebBuild
//
//  Created by Stella on 5/3/16.
//  Copyright © 2016 Stella. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {
    
    var event: Event!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Assume that this has been filled by table view controller
        titleLabel.text = event.name
        textView.text = event.desc
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(sender: AnyObject) {
        let URL = NSURL(string: event.eventURL)
        let safariVc = SFSafariViewController(URL: URL!)
        self.presentViewController(safariVc, animated: true, completion: nil)
    }

}

