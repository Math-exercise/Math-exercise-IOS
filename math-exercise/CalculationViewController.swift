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
        
        selectedOperation = .Division
        switch selectedOperation {
        case .Addition:
            switch selectedDiffuculty {
            case .Easy:
                randomVariableForSum(min: 1, max: 20)
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
            sumFunc(firstNum: num1!, secondNum: num2!)

            break
        case .Subtraction:
            switch selectedDiffuculty {
            case .Easy:
                break
            case .Medium:
                break
            case .Hard:
                break
            case .Expert:
                break
            default:
                print("")
            }
            break
        case .Multiplication:
            switch selectedDiffuculty {
            case .Easy:
                break
            case .Medium:
                break
            case .Hard:
                break
            case .Expert:
                break
            default:
                print("")
            }
            break
        case .Division:
            switch selectedDiffuculty {
            case .Easy:
                randomVariableForDivision(min: 1, max: 20)
                break
            case .Medium:
                randomVariableForDivision(min: 1, max: 50)
                break
            case .Hard:
                randomVariableForDivision(min: 1, max: 100)
                break
            case .Expert:
                randomVariableForDivision(min: 50, max: 300)
                break
            default:
                print("")
            }
            divisionFunc(firstNum: num1!, secondNum: num2!)
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
    
    //sum func
    func sumFunc(firstNum:Int, secondNum:Int) {
        calculationLabel.text = "\(num1!) + \(num2!)"
    }
    
    //division func
    func divisionFunc(firstNum:Int, secondNum:Int){
        calculationLabel.text = "\(num1!) / \(num2!)"
        
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
