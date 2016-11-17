//
//  ViewController.swift
//  AFSample
//
//  Created by Laura Evans on 11/17/16.
//  Copyright © 2016 Laura Evans. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class ViewController: UIViewController {
    
    @IBOutlet weak var testImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // AlamoFire JSON Test
        Alamofire.request("https://codewithchris.com/code/afsample.json").responseJSON { response in
            
            if let JSON = response.result.value as? [String: Any] {
                
                print(JSON["firstkey"] as! String)
                
            }
        }
        
        // AlamoFire Image Test
        Alamofire.request("https://www.gstatic.com/prettyearth/assets/full/1567.jpg").responseImage { response in
            
            if let image = response.result.value {
                print("image downloaded: \(image)")
                self.testImage.image = image
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

