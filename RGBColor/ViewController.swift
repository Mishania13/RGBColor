//
//  ViewController.swift
//  RGBColor
//
//  Created by Mr. Bear on 28/10/2019.
//  Copyright © 2019 Mr. Bear. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textFields: [UITextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFields.forEach({doneButtonAdditing(textField: $0)})
    }
}

extension ViewController {
    //Keyboard
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func any (text: UITextField) {
        let bar = UIToolbar()
        let reset = UIBarButtonItem(title: "Reset", style: .plain, target: self, action: #selector(Done))
        bar.items = [reset]
        bar.sizeToFit()
        text.inputAccessoryView = bar
        
    }
    
    func doneButtonAdditing(textField: UITextField) {
        
        let keyBoardBar = UIToolbar()
        keyBoardBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done",
                                         style: .plain,
                                         target: self,
                                         action: #selector(Done))
        
        let emptySpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace,
                                         target: nil,
                                         action: nil)
        
        keyBoardBar.items = [emptySpace, doneButton]
        
        textField.inputAccessoryView = keyBoardBar
    }
    @objc func Done() {view.endEditing(true)}
}

