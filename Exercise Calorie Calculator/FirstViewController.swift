//
//  FirstViewController.swift
//  Exercise Calorie Calculator
//
//  Created by Ennis Cruz on 4/5/25.
//

import UIKit

var userAge: Double?
var userWeight: Double?
var userGender: String = "Female"
class FirstViewController: UIViewController, UITextFieldDelegate{
    override func viewDidLoad() {
        super.viewDidLoad()
        self.yourAge.delegate = self
        self.yourWeight.delegate = self
    }
    @IBOutlet weak var yourAge: UITextField!
    @IBOutlet weak var yourWeight: UITextField!
    @IBOutlet weak var genderButton: UISegmentedControl!
    @IBAction func genderButton(_sender: Any) {
        switch genderButton.selectedSegmentIndex {
        case 0:
            userGender = "Female"
        case 1:
            userGender = "Male"
        default:
            return
        }
    }
    @IBAction func savePersonInfo(_sender: Any) {
        userWeight = Double(yourWeight.text!)
        userAge = Double(yourAge.text!)
    }
    func textFieldShouldReturn(_textField: UITextField)->Bool {
        self.yourWeight.resignFirstResponder()
        self.yourAge.resignFirstResponder()
        return true
        
    }
}
