//
//  ViewController.swift
//  math-exercise
//
//  Created by Hüseyin GÜLECEN on 7.12.2020.
//

import UIKit

var selectedOperation : Operations?
var selectedDiffuculty : Diffuculty?

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func additionButton(_ sender: Any) {
        selectedOperation = Operations.Addition
        performSegue(withIdentifier: "goToDificulty", sender: nil)
        
    }
    
    @IBAction func subtractionButton(_ sender: Any) {
        selectedOperation = Operations.Subtraction
        performSegue(withIdentifier: "goToDificulty", sender: nil)
    }
    
    @IBAction func multiplication(_ sender: Any) {
        selectedOperation = Operations.Multiplication
        performSegue(withIdentifier: "goToDificulty", sender: nil)
    }
    
    @IBAction func divisionButton(_ sender: Any) {
        selectedOperation = Operations.Division
        performSegue(withIdentifier: "goToDificulty", sender: nil)
    }
    
    @IBAction func mixButton(_ sender: Any) {
        selectedOperation = Operations.Mix
        performSegue(withIdentifier: "goToDificulty", sender: nil)
    }
    
    
    
}

