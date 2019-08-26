//
//  ViewController.swift
//  CreditScorer
//
//  Created by Ritik Raina on 8/23/19.
//  Copyright © 2019 Ritik Raina. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class ViewController: UIViewController {

    @IBOutlet weak var fullNameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    var fullName = ""
    var email = ""
    var phone = ""
    var ref:DatabaseReference?
    var alert: UIAlertView? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func tapStart(_ sender: Any) {
     fullName = fullNameField.text!
     email = emailField.text!
     phone = phoneField.text!
     if fullName.isEmpty || email.isEmpty || phone.isEmpty {
          alert = UIAlertView(title: "",
                              message: "Please fill all the fields",
                              delegate: nil,
                              cancelButtonTitle: "OK")
          alert!.show()
          return
     }
     else {
          self.performSegue(withIdentifier: "pushToQ1", sender: nil)
     }
     ref = Database.database().reference()
     if (fullName != "" && email != "" && phone != "")
     {
          ref?.child(fullName).childByAutoId().setValue(email)
          ref?.child(fullName).childByAutoId().setValue(phone)
          fullName = ""
          email = ""
          phone = ""
     }
     
    }
    
    
}

