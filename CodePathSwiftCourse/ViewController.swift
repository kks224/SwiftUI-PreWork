//
//  ViewController.swift
//  CodePathSwiftCourse
//
//  Created by Kunj Shah on 12/30/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var petsSwitch: UISwitch!
    @IBOutlet weak var petsStepper: UIStepper!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var LastName: UITextField!
    @IBOutlet weak var SchoolName: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberPets: UILabel!
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
            
            
            // Lets us choose the title we have selected from the segmented control
            // In our example that is whether it is first, second, third or forth
            let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
            
            // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
            let introduction = "My name is \(firstName.text!) \(LastName.text!) and I attend \(SchoolName.text!). I am currently in \(year!) year and I own \(numberPets.text!) dogs. It is \(petsSwitch.isOn) that I want more pets."
            
            // Creates the alert where we pass in our message, which our introduction.
            let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
                
            // A way to dismiss the box once it pops up
            let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
                
            // Passing this action to the alert controller so it can be dismissed
            alertController.addAction(action)
                
            present(alertController, animated: true, completion: nil)
        }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
          
          numberPets.text = "\(Int(sender.value))"
      }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

