//
//  ResultViewController.swift
//  math-exercise
//
//  Created by Furkan Kaan Ugsuz on 14/12/2020.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var correctLabel: UILabel!
    
    @IBOutlet weak var wrongLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        correctLabel.text = "Correct Answers : \(correctQuestion)"
        wrongLabel.text = "Wrong Answers : \(wrongQuestion)"
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMain(_ sender: Any) {
        performSegue(withIdentifier: "toMain", sender: nil)
        correctQuestion = 0
        wrongQuestion = 0
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
