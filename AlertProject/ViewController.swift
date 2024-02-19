//
//  ViewController.swift
//  AlertProject
//
//  Created by Aleyna Yerlikaya on 14.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var passwordAgainTextField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpClicked(_ sender: Any) {
        
        /*if userNameTextField.text == ""{
            makeAlert(titleInput: "Error!", messageInput: "username not found")
        }else if passwordTextField.text == ""{
            makeAlert(titleInput: "Error!", messageInput: "password not found")
        }else if passwordTextField.text != passwordAgainTextField.text {
            makeAlert(titleInput: "Error!", messageInput: "password do not match")
        }else{
            makeAlert(titleInput: "Succes!", messageInput: "user ok")
        }*/
        
        if userNameTextField.text != "" {
            if passwordTextField.text != "" {
                if passwordAgainTextField.text != "" {
                    if passwordTextField.text == passwordAgainTextField.text {
                        makeAlert(titleInput: "Succes!", messageInput: "user ok")
                    }else{
                        makeAlert(titleInput: "Error!", messageInput: "password do not match")
                    }
                }else{
                    makeAlert(titleInput: "Error!", messageInput: "enter the again password")
                }
            }else{
                makeAlert(titleInput: "Error!", messageInput: "enter the password")
            }
        }else{
            makeAlert(titleInput: "Error!", messageInput: "enter the name")
        }
    }
    
    func makeAlert(titleInput: String, messageInput: String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
        
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    

}

