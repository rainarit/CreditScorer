//
//  ScoreViewController.swift
//  CreditScorer
//
//  Created by Ritik Raina on 8/24/19.
//  Copyright © 2019 Ritik Raina. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        let q1Ans = defaults.integer(forKey: "q1")
        let q2Ans = defaults.integer(forKey: "q2")
        let q3Ans = defaults.integer(forKey: "q3")
        let q4Ans = defaults.integer(forKey: "q4")
        let q5Ans = defaults.integer(forKey: "q5")
        let q6Ans = defaults.integer(forKey: "q6")
        let totalScore = q1Ans + q2Ans + q3Ans + q4Ans + q5Ans + q6Ans
        scoreLabel.text = String(totalScore)
        // Do any additional setup after loading the view.
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
