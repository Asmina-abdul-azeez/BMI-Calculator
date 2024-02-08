//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Asmina on 16/12/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue : String?

    @IBOutlet weak var resultValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultValue.text = bmiValue ?? ""
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onRecalculate(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
