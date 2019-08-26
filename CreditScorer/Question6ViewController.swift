//
//  Question6ViewController.swift
//  CreditScorer
//
//  Created by Ritik Raina on 8/24/19.
//  Copyright © 2019 Ritik Raina. All rights reserved.
//

import UIKit

class Question6ViewController: UIViewController {

    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    @IBOutlet weak var optionE: UIButton!
    var q6Answer = 0
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
        q6Answer = 0
        let propertyCheck = sender.currentTitle!
        switch propertyCheck {
        case "Tidak Ada":
            q6Answer = q6Answer + 184
        case "Kurang dari 3 Bulan":
            q6Answer = q6Answer + 21
        case "3 - 6 Bulan lalu":
            q6Answer = q6Answer + 43
        case "6 bln - 2 tahun lalu":
            q6Answer = q6Answer + 72
        case "2 - 4 tahun lalu":
            q6Answer = q6Answer + 88
        default:
            break
        }
        let defaults = UserDefaults.standard
        defaults.set(q6Answer, forKey: "q6")
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
