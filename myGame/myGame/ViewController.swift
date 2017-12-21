//
//  ViewController.swift
//  myGame
//
//  Created by apple on 21/12/2017.
//  Copyright © 2017 Ahmed. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func signIn(_ sender: Any) {
        Auth.auth().signIn(withEmail: "lol@gmail.com", password: "azerty", completion: { (user, error) in
            if error == nil {
                print("signin")
                self.performSegue(withIdentifier: "SignInViewController", sender: self)
            }else {
                print("signin - nop")
                self.present(Alert.ErrorAlert(msg:"Mauvais identifiant"), animated: true, completion: nil)
            }
        })
    }
    
    @IBAction func signUp(_ sender: Any) {
        Auth.auth().createUser(withEmail: "lool@gmail.com", password: "azerty", completion: { (user, error) in
            if error == nil {
                print("signUp")
                self.performSegue(withIdentifier: "SignUpViewController", sender: self)
            }else{
                print("signUp - nop")
                self.present(Alert.ErrorAlert(msg:"- le mot de passe doit contenir 6 caractéres \n - besoin d'une email valide"), animated: true, completion: nil)
            }
        })
    }
    



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

