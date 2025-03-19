//
//  SecondViewController.swift
//  Exercise Calorie Calculator
//
//  Created by Ennis Cruz on 3/19/25.
//

import UIKit

var userExerciseTime: Double?
var userHeartRate: Double?

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var exerciseTime: UITextField!
    @IBOutlet weak var avgHeartRate: UITextField!
    @IBAction func saveExerciseInfo(_ sender: Any) {
        
        userExerciseTime = Double(exerciseTime.text!)
        userHeartRate = Double(avgHeartRate.text!)
    }

}


