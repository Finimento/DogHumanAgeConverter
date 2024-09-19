//
//  ViewController.swift
//  DogHumanAgeConverter
//
//  Created by Mike Finimento on 18.09.24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogAgeTextField: UITextField!
    
    @IBOutlet weak var humanAgeLabel: UILabel!
    
    @IBOutlet weak var convertButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        convertButton.layer.cornerRadius = 15
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func ConvertButtonDidTap(_ sender: UIButton) {
        let dogAge = Int(dogAgeTextField.text!) ?? 0
        
        if dogAge <= 20 {
            humanAgeLabel.text = "Ihr Hund ist \(dogAge * 7) Menschenjahre alt"
        } else {
            humanAgeLabel.text = "Bitte gebe ein realistisches Hundealter ein!"
        }
        
    }
    
    
    @IBAction func refreshButtonDidTap(_ sender: UIBarButtonItem) {
        dogAgeTextField.text = ""
        humanAgeLabel.text = "Bitte gebe die Anzahl der Hundejahre ein!"
        view.endEditing(true)
    }
    
}

