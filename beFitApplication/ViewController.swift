//
//  ViewController.swift
//  beFitApplication
//
//  Created by Kamil Kopik on 03/04/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginUser: UITextField!
    
    @IBOutlet weak var passwordUser: UITextField!
    
    @IBOutlet weak var feedbackPassword: UILabel!
    
    let minimumPasswordLength = 8
    
    override func viewDidLoad() {
        
        feedbackPassword.isHidden = true
        passwordUser.isSecureTextEntry = true
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        
        let email = loginUser.text
        let password = passwordUser.text
        
        if password!.count < minimumPasswordLength{
            
            feedbackPassword.text = "Password must have at least \(minimumPasswordLength) characters."
            
            feedbackPassword.isHidden = false
        }
        if password == "Kamil1234"{
            navigateToNewControler()
        }
        
    }

    func navigateToNewControler(){
        if let destination = storyboard?.instantiateViewController(withIdentifier: "AfterLogin")
        {
            present(destination, animated: true, completion: nil)
        }
    }
    
}

