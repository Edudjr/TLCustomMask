//
//  ViewController.swift
//  TLCustomMask
//
//  Created by Edudjr on 03/29/2017.
//  Copyright (c) 2017 Edudjr. All rights reserved.
//

import UIKit
import TLCustomMask

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let customMask = TLCustomMask(formattingPattern: "$$$-$$")
        print(customMask.formatString(string: "123456"))
        
        customMask.formattingPattern = "****/$$$"
        print(customMask.formatString(string: "abcdef12345"))
        print(customMask.cleanText)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

