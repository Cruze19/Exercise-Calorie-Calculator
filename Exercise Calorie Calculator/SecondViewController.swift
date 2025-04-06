//
//  SecondViewController.swift
//  Exercise Calorie Calculator
//
//  Created by Ennis Cruz on 4/5/25.
//

import UIKit
var userExerciseTime: Double?
var userHeartRate: Double?
class SecondViewController: UIViewController, UITextFieldDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseTime.delegate = self
        self.avgHeartRate.delegate = self
    }
    @IBOutlet weak var exerciseTime: UITextField!
    @IBOutlet weak var avgHeartRate: UITextField!
    @IBAction func saveExerciseInfo(_sender: Any) {
        
        userExerciseTime = Double(exerciseTime.text!)
        userHeartRate = Double(avgHeartRate.text!)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.exerciseTime.resignFirstResponder()
        self.avgHeartRate.resignFirstResponder()
        return true
    }
}
