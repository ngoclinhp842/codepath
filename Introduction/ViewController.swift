//
//  ViewController.swift
//  Introduction
//
//  Created by Linh Phan on 1/1/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        // change background color to lightGray when this button pressed
        self.view.backgroundColor = UIColor.lightGray
    }
    
    @IBAction func introduceSelfDidTap(_ sender: UIButton) {
        // let user choose the title from the segmented control
        // (first, second, third, or forth)
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        // a constant of type string to hold an introduction
        // the introduction receives the values from the outlet connections
        let intro = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currectly in my  \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
        print(intro)
        
        // an alert where we pass in our message (the introduction)
        let alertController = UIAlertController(title: "My Introduction", message: intro, preferredStyle: .alert)
        
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

