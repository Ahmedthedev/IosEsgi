//
//  Alert.swift
//  myGame
//
//  Created by apple on 21/12/2017.
//  Copyright © 2017 Ahmed. All rights reserved.
//

import Foundation
import UIKit

class Alert {

    
    public static func ErrorAlert(msg:String) -> UIAlertController {
        let alert = UIAlertController(title: "Error", message: msg, preferredStyle: UIAlertControllerStyle.alert)
        
        let action = UIAlertAction(title: "Compris !", style: UIAlertActionStyle.cancel, handler: nil)
        alert.addAction(action)
        return alert
    }
}
