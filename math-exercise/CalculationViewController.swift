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
    @IBOutlet weak var resultLabel: UILabel!
    var checkClicking = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calculationLabel.layer.borderWidth = 2
        calculationLabel.layer.borderColor = UIColor.red.cgColor
        
        
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
        // 1-Sum 2-Minus 3-Multiple 4-Division
        case .Mix :
            let randomOperation = Int.random(in: 1..<5)
            switch selectedDiffuculty {
            case .Easy:
                switch randomOperation {
                case 1:
                    randomVariableForSum(min: 2, max: 20)
                    sumFunc()
                    break
                case 2:
                    randomVariableForSubstraction(min: 2, max: 20)
                    subtractionFunc()
                    break
                case 3:
                    randomVariableForMultiplication(min: 2, max: 10)
                    multiplicationFunc()
                    break
                case 4:
                    randomVariableForDivision(min: 50, max: 300)
                    divisionFunc()
                    break
                default:
                    print("")
                }
                break
            case .Medium:
                switch randomOperation {
                case 1:
                    randomVariableForSum(min: 2, max: 20)
                    sumFunc()
                    break
                case 2:
                    randomVariableForSubstraction(min: 2, max: 20)
                    subtractionFunc()
                    break
                case 3:
                    randomVariableForMultiplication(min: 2, max: 10)
                    multiplicationFunc()
                    break
                case 4:
                    randomVariableForDivision(min: 50, max: 300)
                    divisionFunc()
                    break
                default:
                    print("")
                }
                break
            case .Hard:
                switch randomOperation {
                case 1:
                    randomVariableForSum(min: 2, max: 20)
                    sumFunc()
                    break
                case 2:
                    randomVariableForSubstraction(min: 2, max: 20)
                    subtractionFunc()
                    break
                case 3:
                    randomVariableForMultiplication(min: 2, max: 10)
                    multiplicationFunc()
                    break
                case 4:
                    randomVariableForDivision(min: 50, max: 300)
                    divisionFunc()
                    break
                default:
                    print("")
                }
                break
            case .Expert:
                switch randomOperation {
                case 1:
                    randomVariableForSum(min: 2, max: 20)
                    sumFunc()
                    break
                case 2:
                    randomVariableForSubstraction(min: 2, max: 20)
                    subtractionFunc()
                    break
                case 3:
                    randomVariableForMultiplication(min: 2, max: 10)
                    multiplicationFunc()
                    break
                case 4:
                    randomVariableForDivision(min: 50, max: 300)
                    divisionFunc()
                    break
                default:
                    print("")
                }
                break
            default:
                print("")
            }
            
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

    func sumFunc() {
        calculationLabel.text = "\(num1!) + \(num2!)"
    }
    
    
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
    
    
    @IBAction func oneButton(_ sender: Any) {
        
        if checkClicking
        {
            resultLabel.text = "1"
            checkClicking = false
        }
        else
        {
            resultLabel.text = "\(String(describing: resultLabel.text!))\(1)"
            
        }
        
    }
    
    @IBAction func twoButton(_ sender: Any) {
        if checkClicking
        {
            resultLabel.text = "2"
            checkClicking = false
        }
        else
        {
            resultLabel.text = "\(String(describing: resultLabel.text!))\(2)"
            
        }
    }
    
    @IBAction func threeButton(_ sender: Any) {
        if checkClicking
        {
            resultLabel.text = "3"
            checkClicking = false
        }
        else
        {
            resultLabel.text = "\(String(describing: resultLabel.text!))\(3)"
            
        }
    }
    
    @IBAction func fourButton(_ sender: Any) {
        if checkClicking
        {
            resultLabel.text = "4"
            checkClicking = false
        }
        else
        {
            resultLabel.text = "\(String(describing: resultLabel.text!))\(4)"
            
        }
    }
    
    @IBAction func fiveButton(_ sender: Any) {
        if checkClicking
        {
            resultLabel.text = "5"
            checkClicking = false
        }
        else
        {
            resultLabel.text = "\(String(describing: resultLabel.text!))\(5)"
            
        }
    }
    
    @IBAction func sixButton(_ sender: Any) {
        if checkClicking
        {
            resultLabel.text = "6"
            checkClicking = false
        }
        else
        {
            resultLabel.text = "\(String(describing: resultLabel.text!))\(6)"
            
        }
    }
    
    @IBAction func sevenButton(_ sender: Any) {
        if checkClicking
        {
            resultLabel.text = "7"
            checkClicking = false
        }
        else
        {
            resultLabel.text = "\(String(describing: resultLabel.text!))\(7)"
            
        }
    }
    
    @IBAction func eightButton(_ sender: Any) {
        if checkClicking
        {
            resultLabel.text = "8"
            checkClicking = false
        }
        else
        {
            resultLabel.text = "\(String(describing: resultLabel.text!))\(8)"
        }
    }
    
    @IBAction func nineButton(_ sender: Any) {
        if checkClicking
        {
            resultLabel.text = "9"
            checkClicking = false
            
        }
        else
        {
            resultLabel.text = "\(String(describing: resultLabel.text!))\(9)"
        }
    }
    
    @IBAction func zeroButton(_ sender: Any) {
        if checkClicking
        {
            resultLabel.text = "0"
            checkClicking = false
        }
        else
        {
            resultLabel.text = "\(String(describing: resultLabel.text!))\(0)"
        }
    }
    
    @IBAction func delButton(_ sender: Any) {
        
    }
    
    @IBAction func checkButton(_ sender: Any) {
       
    }
    
    
    
    
}
