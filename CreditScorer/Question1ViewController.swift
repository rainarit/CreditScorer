//
//  Question1ViewController.swift
//  CreditScorer
//
//  Created by Ritik Raina on 8/23/19.
//  Copyright © 2019 Ritik Raina. All rights reserved.
//

import UIKit

class Question1ViewController: UIViewController {

    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    var q1Answer = 0
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
    
    func buttonPressed(sender: UIButton) {
        q1Answer = 0
        let propertyCheck = sender.currentTitle!
        switch propertyCheck {
            case "Tidak Ada":
                q1Answer = q1Answer + 72
            case "1 sampai 2":
                q1Answer = q1Answer + 112
            case "3 sampai 5":
                q1Answer = q1Answer + 134
            case "Lebih dari 5":
                q1Answer = q1Answer + 85
            default:
                break
        }
        let defaults = UserDefaults.standard
        defaults.set(q1Answer, forKey: "q1")
        defaults.synchronize()
        print(defaults.integer(forKey: "q1"))
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
