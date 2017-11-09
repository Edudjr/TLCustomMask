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
    @IBOutlet weak var numberOnlyTextField: UITextField!
    @IBOutlet weak var characterOnlyTextField: UITextField!
    @IBOutlet weak var mixedTextField: UITextField!
    var numericMask = TLCustomMask()
    var charactersMask = TLCustomMask()
    var mixedMask = TLCustomMask()
    /* Alternatively:
     * var customMask = TLCustomMask(formattingPattern: "$$$-$$")
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberOnlyTextField.delegate = self
        characterOnlyTextField.delegate = self
        mixedTextField.delegate = self
        
        numericMask.formattingPattern = "$$.$$/$$-$"
        charactersMask.formattingPattern = "**.**/**-*"
        mixedMask.formattingPattern = "$$.**/$*-*"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: UITextFieldDelegate{
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        
        if(textField == numberOnlyTextField){
            numberOnlyTextField.text = numericMask.formatStringWithRange(range: range, string: string)
        }else if(textField == characterOnlyTextField){
            characterOnlyTextField.text = charactersMask.formatStringWithRange(range: range, string: string)
        }else if(textField == mixedTextField){
            mixedTextField.text = mixedMask.formatStringWithRange(range: range, string: string)
        }
        
        return false
    }
}

