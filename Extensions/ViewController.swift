//
//  ViewController.swift
//  Extensions
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var unicornLevelLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let fullName: String = "Ryan Cohen"
//        
//        print(fullName.whisper())
//        print(fullName.shout())
//        print(fullName.points)
//        print(fullName.pigLatin())
//        
//        let phoneNumber: Int = 8
//        
//        print(phoneNumber.half())
//        print(phoneNumber.isDivisibleBy(9))
//        print(phoneNumber.squared)
//        print(phoneNumber.halved)
        
        unicornLevelLabel.text = "Ryan Cohen".unicornLevel
    }
}


