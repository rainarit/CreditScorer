//
//  Question3ViewController.swift
//  CreditScorer
//
//  Created by Ritik Raina on 8/24/19.
//  Copyright © 2019 Ritik Raina. All rights reserved.
//

import UIKit

class Question3ViewController: UIViewController {

    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    @IBOutlet weak var optionE: UIButton!
    var q3Answer = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func optionATouched(_ sender: Any) {
        buttonPressed(sender: optionA)
    }
    
    @IBAction func optionBTouched(_ sender: Any) {
        buttonPressed(sender: optionB)
    }
    
    @IBAction func optionCTouched(_ sender: Any) {
        buttonPressed(sender: optionC)
    }
    
    @IBAction func optionDTouched(_ sender: Any) {
        buttonPressed(sender: optionD)
    }
    
    @IBAction func optionETouched(_ sender: Any) {
        buttonPressed(sender: optionE)
    }
    
    func buttonPressed(sender: UIButton) {
        q3Answer = 0
        let propertyCheck = sender.currentTitle!
        switch propertyCheck {
        case "Tidak Ada":
            q3Answer = q3Answer + 62
        case "Kurang dari 10 juta":
            q3Answer = q3Answer + 84
        case "10 - 50 juta":
            q3Answer = q3Answer + 113
        case "50 - 100 juta":
            q3Answer = q3Answer + 136
        case "Lebih dari 100 juta":
            q3Answer = q3Answer + 111
        default:
            break
        }
        let defaults = UserDefaults.standard
        defaults.set(q3Answer, forKey: "q3")
        defaults.synchronize()
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
