//
//  Alert.swift
//  MyGame
//
//  Created by user on 21/12/2017.
//  Copyright © 2017 user. All rights reserved.
//

import Foundation
import UIKit

class Alert {
    public static func ErrorAlert()  -> UIAlertController {
        let alert = UIAlertController(title: "error", message: "attention vous n'avez pas répondu à tous les prérequid", preferredStyle: UIAlertControllerStyle.alert)
        let action = UIAlertAction(title: "Compris !", style: UIAlertActionStyle.cancel, handler: nil)
        alert.addAction(action)
        return alert
    }
    
    public static func GoodAlert()  -> UIAlertController {
        let alert = UIAlertController(title: "Good", message: "gg compte crée", preferredStyle: UIAlertControllerStyle.alert)
        let action = UIAlertAction(title: "Compris !", style: UIAlertActionStyle.default, handler: nil)
        alert.addAction(action)
        return alert
    }
}
