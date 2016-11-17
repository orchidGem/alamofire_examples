//
//  ViewController.swift
//  AFSample
//
//  Created by Laura Evans on 11/17/16.
//  Copyright © 2016 Laura Evans. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Alamofire.request("https://codewithchris.com/code/afsample.json").responseJSON { response in
            
            if let JSON = response.result.value as? [String: Any] {
                
                print(JSON["firstkey"] as! String)
                
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

