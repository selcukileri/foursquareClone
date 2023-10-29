//
//  ViewController.swift
//  FoursquareClone
//
//  Created by Selçuk İleri on 29.10.2023.
//

import UIKit
import Parse

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func signInClicked(_ sender: Any) {
        if usernameText.text != "" && passwordText.text != "" {
            PFUser.logInWithUsername(inBackground: usernameText.text!, password: passwordText.text!) { user, error in
                if error != nil {
                    self.makeAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "Error!!")
                } else {
                    //performSegue(withIdentifier: <#T##String#>, sender: <#T##Any?#>)
                    print("Welcome \(user!.username)")
                }
            }
        } else {
            self.makeAlert(titleInput: "Error", messageInput: "Username / Password??")
        }
    }
    

    @IBAction func signUpClicked(_ sender: Any) {
        if usernameText.text != nil && passwordText.text != nil {
            let user = PFUser()
            user.username = usernameText.text!
            user.password = passwordText.text!
            user.signUpInBackground { success, error in
                if error != nil {
                    self.makeAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "Error!!")
                } else {
                    //performSegue(withIdentifier: <#T##String#>, sender: <#T##Any?#>)
                    print("OK")
                }
            }
        } else {
            makeAlert(titleInput: "Error", messageInput: "Username / Password??")
        }
    }
    func makeAlert(titleInput: String, messageInput: String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        present(alert, animated: true)
    }
    
}

