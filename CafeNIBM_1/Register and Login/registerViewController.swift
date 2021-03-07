//
//  registerViewController.swift
//  CafeNIBM_1
//
//  Created by Heshani Chamalka on 2021-03-07.
//

import UIKit

class registerViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var phonenoTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var registerButton: UIButton!
    
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var forgetpwButton: UIButton!
    
    @IBOutlet weak var errorlbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        errorlbl.alpha = 0
    }
    
    func validateFields() -> String?{
        
        //check that all fields are filled in
        if emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            phonenoTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
        {
            return "please fill all fields"
        }
        
        //check if the password is secure
        let cleanedPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        return nil
    }
    

    
    
    @IBAction func registerTapped(_ sender: Any) {
    }
    
    @IBAction func loginTapped(_ sender: Any) {
    }
    
    @IBAction func forgetpwTapped(_ sender: Any) {
    }
    
}
