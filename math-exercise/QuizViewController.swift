//
//  QuizViewController.swift
//  math-exercise
//
//  Created by Hüseyin GÜLECEN on 11.12.2020.
//

import UIKit




class QuizViewController: UIViewController {
    
    var buttonsDifficulty : [RadioButton]?
    var buttonsOperations : [RadioButton]?
    
    
    
    
    
    @IBOutlet weak var easyRadioButton: RadioButton!
    @IBOutlet weak var mediumRadioButton: RadioButton!
    @IBOutlet weak var hardRadioButton: RadioButton!
    @IBOutlet weak var expertRadioButton: RadioButton!
    
    
    
   
    @IBOutlet weak var subtractionRadioButton: RadioButton!
    @IBOutlet weak var multiplicationRadioButton: RadioButton!
    @IBOutlet weak var divisionRadioButton: RadioButton!
    @IBOutlet weak var mixRadioButton: RadioButton!
    @IBOutlet weak var additionRadioButton: RadioButton!
    
    @IBAction func startQuizButton(_ sender: Any) {
        var checkButtonDifficulty = false
        var checkButtonOperation = false
        
        buttonsDifficulty?.forEach({
            if $0.isSelected == true
            {
                print("la")
                checkButtonDifficulty = true
                
            }
        })
        buttonsOperations?.forEach({
            if $0.isSelected == true
            {
                print("pisttt")
                checkButtonOperation = true
                
            }
        })
        
        if checkButtonOperation && checkButtonDifficulty
        {
            print("eller havaya")
            if easyRadioButton.isSelected == true
            {
                selectedDiffuculty = Diffuculty.Easy
                print("kolay secildi ")
            }
            if mediumRadioButton.isSelected == true
            {
                selectedDiffuculty = Diffuculty.Medium
                print("orta secildi ")
            }
            if hardRadioButton.isSelected == true
            {
                selectedDiffuculty = Diffuculty.Hard
                print("zor  secildi ")
            }
            if expertRadioButton.isSelected == true
            {
                selectedDiffuculty = Diffuculty.Expert
                print("en zor  secildi ")
            }
            
            if subtractionRadioButton.isSelected == true
            {
                selectedOperation = Operations.Subtraction
                print(" subst secildi ")
            }
            if multiplicationRadioButton.isSelected == true
            {
                selectedOperation = Operations.Multiplication
                print("multiplication secildi  ")
            }
            if additionRadioButton.isSelected == true
            {
                selectedOperation = Operations.Addition
                print(" toplma secildi ")
            }
            if divisionRadioButton.isSelected == true
            {
                selectedOperation = Operations.Division
                print(" divison secilid ")
            }
            if mixRadioButton.isSelected == true
            {
                selectedOperation = Operations.Mix
                print(" karisik kategori ")
            }
            
            performSegue(withIdentifier: "toQuiz", sender: nil)

          
            
           //// selectedDiffuculty = Diffuculty.Easy
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toQuiz"
        {
            let destinationVC = segue.destination as! CalculationViewController
            destinationVC.checkSegue = "Quiz"
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonsDifficulty = [easyRadioButton, mediumRadioButton, hardRadioButton,expertRadioButton]
        buttonsOperations = [additionRadioButton,subtractionRadioButton,multiplicationRadioButton,divisionRadioButton,mixRadioButton]
        

        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func radioButtonTapped(_ sender: RadioButton) {
        buttonsDifficulty?.forEach({ $0.isSelected = false})
        sender.isSelected = true
    }
    
    @IBAction func radioButtonOperationTapped(_ sender: RadioButton) {
        buttonsOperations?.forEach({ $0.isSelected = false
            
        })
        sender.isSelected = true
        
    }
    

    

}
