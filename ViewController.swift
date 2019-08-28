//
//  ViewController.swift
//  Memorizer
//
//  Created by Ryan Tsang on 2019-08-25.
//  Copyright © 2019 Ryan Tsang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userInputBox: UITextField!
    
    @IBOutlet weak var textView: UITextView!
   
    @IBAction func secondStageButton(_ sender: Any)
    {
        if userInputBox.text  != ""
        {
            performSegue(withIdentifier: "toSecondStage", sender: self)
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let secondController = segue.destination as! SecondStageViewController
        secondController.userText = userInputBox.text!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userInputBox.delegate = self
    }
    
    
    @IBAction func displayTextButton(_ sender: Any) {
        textView.text = userInputBox.text!
    }
}

extension ViewController : UITextFieldDelegate{
   
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
