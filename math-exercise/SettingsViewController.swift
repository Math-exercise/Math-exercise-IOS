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
var vibration = true
var checkSound = true
var checkVibration = true

let defaultSound = UserDefaults.standard
let defaultVibration = UserDefaults.standard

class SettingsViewController: QuickTableViewController {
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(defaultSound.bool(forKey:"Sound"))
        soundOn = defaultSound.bool(forKey: "Sound")
        vibration = defaultVibration.bool(forKey: "Vibration")

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
            ]),
            Section(title: "Rate the app", rows: [
                    TapActionRow(text: "Rate!", action: toAppStore())
                  ]),
            
           ]

        // Do any additional setup after loading the view.
    }
   
    private func showAlert() -> (Row) -> Void {
        return { [weak self] _ in
          let alert = UIAlertController(title: "Action Triggered", message: nil, preferredStyle: .alert)
          alert.addAction(UIAlertAction(title: "OK", style: .cancel) { [weak self] _ in
            self?.dismiss(animated: true, completion: nil)
          })
          self?.present(alert, animated: true, completion: nil)
        }
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
                defaultSound.set(soundOn,forKey: "Sound")
                

             }
            else{
                soundOn = true
                checkSound = true
                defaultSound.set(soundOn,forKey: "Sound")

            }
        }
    }
    private func vibrationFunc() -> (Row) -> Void {
        
        return{[weak self] row in
            if (checkVibration ){
                vibration = false
                checkVibration = false
                defaultVibration.set(vibration, forKey: "Vibration")
             }
            else{
                vibration = true
                checkVibration = true
                defaultVibration.set(vibration, forKey: "Vibration")

            }
            
            
        }
    }
    
    func switchValueDidChange(_ sender: UISwitch) {
        print("wow")
    }
    
    func toAppStore() -> (Row) -> Void{
        
        return {row in 
            if let url = URL(string: "itms-apps://apple.com/app/id839686104") {
                UIApplication.shared.open(url)
            }
        };
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
