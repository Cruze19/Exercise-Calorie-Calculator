//
//  ThirdViewController.swift
//  Exercise Calorie Calculator
//
//  Created by Ennis Cruz on 4/5/25.
//

import UIKit
var caloriesBurned: Double?
class ThirdViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var calories: UILabel!
    @IBAction func calcCalories(_sender: Any) {
        switch userGender {
        case "Female" :
            caloriesBurned = ((userAge!*0.074)-(userWeight!*0.05741)+(userHeartRate!*0.4472)-20.4022)*userExerciseTime!/4.184
        case "Male" : caloriesBurned = ((userAge!*0.2017)-(userWeight!*0.09036)+(userHeartRate!*0.6309)-55.0969)*userExerciseTime!/4/185
        default:
            return
        }
        calories.text = String(Int(caloriesBurned!))+" calories burned"
    }
}
