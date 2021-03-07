//
//  loginViewController.swift
//  CafeNIBM_1
//
//  Created by Heshani Chamalka on 2021-03-07.
//

import UIKit

class loginViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    @IBOutlet weak var errorlbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        errorlbl.alpha = 0
    }

    @IBAction func loginTapped(_ sender: Any) {
    }
    
}
