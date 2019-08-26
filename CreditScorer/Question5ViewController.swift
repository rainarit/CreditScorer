//
//  Question5ViewController.swift
//  CreditScorer
//
//  Created by Ritik Raina on 8/24/19.
//  Copyright © 2019 Ritik Raina. All rights reserved.
//

import UIKit

class Question5ViewController: UIViewController {

    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    @IBOutlet weak var optionE: UIButton!
    @IBOutlet weak var optionF: UIButton!
    var q5Answer = 0
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
    
    @IBAction func optionFTouched(_ sender: Any) {
        buttonPressed(sender: optionF)
    }
    
    func buttonPressed(sender: UIButton) {
        q5Answer = 0
        let propertyCheck = sender.currentTitle!
        switch propertyCheck {
        case "Tidak Ada":
            q5Answer = q5Answer + 61
        case "Kurang dari 6 Bulan":
            q5Answer = q5Answer + 76
        case "6 bln - 2 tahun lalu":
            q5Answer = q5Answer + 93
        case "2 - 5 tahun lalu":
            q5Answer = q5Answer + 136
        case "5 - 10 tahun lalu":
            q5Answer = q5Answer + 147
        case "Lebih dari 10 tahun lalu":
            q5Answer = q5Answer + 112
        default:
            break
        }
        let defaults = UserDefaults.standard
        defaults.set(q5Answer, forKey: "q5")
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
