
import UIKit

class ViewController: UIViewController {
    private var isFinishedTypingNumber: Bool = true
    
    @IBOutlet weak var displayLabel: UILabel!
    
    
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        //What should happen when a non-number button is pressed
        isFinishedTypingNumber = true
        guard let number = Double(displayLabel.text!)else{
            fatalError("Cannot convert a String into Double")
        }
        
        if let currentMethod = sender.currentTitle{
            if currentMethod == "+/-"{
                displayLabel.text = String(number * -1)
            }else if currentMethod == "AC"{
                displayLabel.text = "0"
            }else if currentMethod == "%"{
                displayLabel.text = String(number/100)
            }
        }
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //What should happen when a number is entered into the keypad
        if let numValue = sender.currentTitle{
            if isFinishedTypingNumber{
                if numValue == "."{
                    displayLabel.text = "0."
                }
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            }else{
                if numValue == "."{
                    if displayLabel.text!.contains("."){
                        return
                    }
                }
                displayLabel.text! += numValue
            }
        }
    }

}

