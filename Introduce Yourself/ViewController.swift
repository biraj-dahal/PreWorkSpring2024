//
//  ViewController.swift
//  Introduce Yourself
//
//  Created by Biraj Dahal on 1/5/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SchoolInput: UITextField!
    @IBOutlet weak var LnInput: UITextField!
    @IBOutlet weak var YearChoose: UISegmentedControl!
    @IBOutlet weak var Stepper: UIStepper!
    @IBOutlet weak var numPets: UILabel!
    @IBOutlet weak var morePets: UISwitch!
    @IBOutlet weak var FnInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        numPets.text = "\(Int(sender.value))"
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let year = YearChoose.titleForSegment(at: YearChoose.selectedSegmentIndex)
               
               // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
        let introduction = "My name is \(FnInput.text!) \(LnInput.text!) and I attend \(SchoolInput.text!). I am currently in my \(year!) year and I own \(numPets.text!) dogs. It is \(morePets.isOn) that I want more pets."
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
                
                // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
                
                // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
                
        present(alertController, animated: true, completion: nil)
               
        
        
    }
    

}

