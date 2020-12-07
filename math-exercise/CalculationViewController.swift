//
//  CalculationViewController.swift
//  math-exercise
//
//  Created by Furkan Kaan Ugsuz on 07/12/2020.
//

import UIKit

class CalculationViewController: UIViewController {
    //numbers
    var num1:Int?
    var num2:Int?

    //label
    @IBOutlet weak var calculationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calculationLabel.layer.borderWidth = 2
        calculationLabel.layer.borderColor = UIColor.red.cgColor
        
        
        selectedOperation = .Division
        switch selectedOperation {
        case .Addition:
            switch selectedDiffuculty {
            case .Easy:
                randomVariableForSum(min: 2, max: 20)
                break
            case .Medium:
                randomVariableForSum(min: 21, max: 50)
                break
            case .Hard:
                randomVariableForSum(min: 51, max: 100)
                break
            case .Expert:
                randomVariableForSum(min: 100, max: 200)
                break
            default:
                print("")
            }
            sumFunc()

            break
        case .Subtraction:
            switch selectedDiffuculty {
            case .Easy:
                randomVariableForSubstraction(min: 2, max: 20)
                break
            case .Medium:
                randomVariableForSubstraction(min: 21, max: 50)
                break
            case .Hard:
                randomVariableForSubstraction(min: 51, max: 75)
                break
            case .Expert:
                randomVariableForSubstraction(min: 76, max: 120)
                break
            default:
                print("")
            }
            subtractionFunc()
            break
        case .Multiplication:
            switch selectedDiffuculty {
            case .Easy:
                randomVariableForMultiplication(min: 2, max: 10)
                break
            case .Medium:
                randomVariableForMultiplication(min: 10, max: 30)
                break
            case .Hard:
                randomVariableForMultiplication(min: 30, max: 50)
                break
            case .Expert:
                randomVariableForMultiplication(min: 50, max: 100)
                break
            default:
                print("")
            }
            multiplicationFunc()
            break
        case .Division:
            switch selectedDiffuculty {
            case .Easy:
                randomVariableForDivision(min: 2, max: 20)
                break
            case .Medium:
                randomVariableForDivision(min: 2, max: 50)
                break
            case .Hard:
                randomVariableForDivision(min: 2, max: 100)
                break
            case .Expert:
                randomVariableForDivision(min: 50, max: 300)
                break
            default:
                print("")
            }
            divisionFunc()
            break
        default:
            print("")
        }

        // Do any additional setup after loading the view.
        
    }
    
    //set number for given range
    func randomVariableForSum(min:Int,max:Int){
        num1 = Int.random(in: min..<max)
        num2 = Int.random(in: min..<max)
        
    }
    func randomVariableForDivision(min:Int,max:Int){
        while true {
            num1 = Int.random(in: min..<max)
            num2 = Int.random(in: min..<max)
            if ((num1!>num2!) && (num1! % num2! == 0) ){
               break
            }
        }
    }
    func randomVariableForSubstraction(min:Int, max:Int){
        num1 = Int.random(in: min..<max)
        num2 = Int.random(in: min..<max)
        if num2! > num1!{
            let temp = num2
            num2 = num1
            num1 = temp
        }
    }
    func randomVariableForMultiplication(min:Int, max:Int){
        num1 = Int.random(in: min..<max)
        num2 = Int.random(in: min..<max)
    }

    
    //sum func
    func sumFunc() {
        calculationLabel.text = "\(num1!) + \(num2!)"
    }
    
    //division func
    func divisionFunc(){
        calculationLabel.text = "\(num1!) / \(num2!)"
    }
    
    // subtraction func
    func subtractionFunc(){
        calculationLabel.text = "\(num1!) - \(num2!)"
    }
    
    //multiplication func
    func multiplicationFunc(){
        calculationLabel.text = "\(num1!) x \(num2!)"
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
