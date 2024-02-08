//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Asmina on 13/12/23.
//

import UIKit

class CalculateViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var bmiValue: String?

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBAction func onheightChange(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func onChangeWeight(_ sender: UISlider) {
        let weight = String(format: "%.2f", sender.value)
        weightLabel.text = "\(weight)kg"
    }
    
    @IBAction func onCalculatePress(_ sender: UIButton) {
        let weight = weightSlider.value;
        let height = heightSlider.value;
        let result = weight / (height * height)
        bmiValue = String(format: "%.2f", result)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVc = segue.destination as! ResultViewController
            destinationVc.bmiValue = bmiValue
        }
    }
}

