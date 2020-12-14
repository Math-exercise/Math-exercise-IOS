//
//  SettingsViewController.swift
//  math-exercise
//
//  Created by Furkan Kaan Ugsuz on 13/12/2020.
//

import UIKit
import QuickTableViewController

var selectedNumberofQuestion = 10
var selectedTime = 15

var soundOn = true
var checkSound = true
var vibration = true
var checkVibration = true

class SettingsViewController: QuickTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableContents = [
             Section(title: "Switch", rows: [
                SwitchRow(text: "Sound effects", switchValue: soundOn, action: soundFunc()
                    ),
               SwitchRow(text: "Vibration", switchValue: vibration, action: vibrationFunc())
             ]),


             RadioSection(title: "Number of questions in Quiz", options: [
               OptionRow(text: "10", isSelected: true, action: didToggleSelectionForNumber()),
               OptionRow(text: "15", isSelected: false, action: didToggleSelectionForNumber()),
               OptionRow(text: "20", isSelected: false, action: didToggleSelectionForNumber())
             ]),
            RadioSection(title: "Time for questions", options: [
              OptionRow(text: "10", isSelected: true, action: didToggleSelectionForTime()),
              OptionRow(text: "15", isSelected: false, action: didToggleSelectionForTime()),
              OptionRow(text: "20", isSelected: false, action: didToggleSelectionForTime())
            ])
           ]

        // Do any additional setup after loading the view.
    }
    private func showAlert(_ sender: Row) {
        // ...
      }

    private func didToggleSelectionForNumber() -> (Row) -> Void {
        
        return { row in
            selectedNumberofQuestion = Int(row.text)!
        }
    }
    
    private func didToggleSelectionForTime() -> (Row) -> Void {
        
        return { row in
            selectedTime = Int(row.text)!
        }
    }
    
    private func soundFunc() -> (Row) -> Void {
        
        return{ row in
            if (checkSound){
                soundOn = false
                checkSound = false
             }
            else{
                soundOn = true
                checkSound = true
            }
            
            
        }
    }
    private func vibrationFunc() -> (Row) -> Void {
        
        return{[weak self] row in
            if (checkVibration ){
                vibration = false
                checkVibration = false
             }
            else{
                vibration = true
                checkVibration = true
            }
            
            
        }
    }
    
    func switchValueDidChange(_ sender: UISwitch) {
        print("wow")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
