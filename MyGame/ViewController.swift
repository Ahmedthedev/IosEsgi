//
//  ViewController.swift
//  MyGame
//
//  Created by user on 21/12/2017.
//  Copyright © 2017 user. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func SignInButton(_ sender: Any) {
        guard let email = self.EmailTextField.text else {
            return
        }
        guard let password = self.PasswordTextField.text else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password, completion: {(user,error) in
            if error == nil {
                self.performSegue(withIdentifier: "SignInViewController", sender: self)
            }else {
               let alert = Alert.ErrorAlert()
                self.present(alert, animated: true, completion: nil)
            }
        
        });
    }
    
    @IBAction func SignUpButton(_ sender: Any) {
        guard let email = self.EmailTextField.text else {
            return
        }
        guard let password = self.PasswordTextField.text else {
            return
        }
        Auth.auth().createUser(withEmail: email, password: password, completion: {(user,error) in
            if error == nil {
                 let alert = Alert.GoodAlert()
                self.present(alert, animated: true, completion: nil)
            }else {
                 let alert = Alert.ErrorAlert()
                self.present(alert, animated: true, completion: nil)
            }
        })
    }
}

