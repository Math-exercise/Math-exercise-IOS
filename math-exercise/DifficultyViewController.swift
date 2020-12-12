//
//  DifficultyViewController.swift
//  math-exercise
//
//  Created by Furkan Kaan Ugsuz on 07/12/2020.
//

import UIKit

class DifficultyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func easyButton(_ sender: Any) {
        selectedDiffuculty = Diffuculty.Easy
        performSegue(withIdentifier: "toCalculation", sender: nil)
    }
    
    @IBAction func mediumButton(_ sender: Any) {
        selectedDiffuculty = Diffuculty.Medium
        performSegue(withIdentifier: "toCalculation", sender: nil)
        

    }
    @IBAction func hardButton(_ sender: Any) {
        selectedDiffuculty = Diffuculty.Hard
        performSegue(withIdentifier: "toCalculation", sender: nil)

    }
    @IBAction func Expert(_ sender: Any) {
        selectedDiffuculty = Diffuculty.Expert
        performSegue(withIdentifier: "toCalculation", sender: nil)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCalculation"
        {
            let destinationVC = segue.destination as! CalculationViewController
            destinationVC.checkSegue = "Calculation"
            
        }
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
