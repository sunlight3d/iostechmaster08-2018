//
//  AlertManager.swift
//  MyProject
//
//  Created by Nguyen Duc Hoang on 8/18/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import UIKit

class AlertManager: NSObject {
    class func showAlert(viewController: UIViewController,
                         title: String,
                         message: String,
                         handlerOK:(() -> Swift.Void)? = nil,
                         handlerCancel:(() -> Swift.Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { (action: UIAlertAction!) in
            handlerOK?()
        }))
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: { (action: UIAlertAction!) in
            handlerOK?()
        }))
        viewController.present(alert, animated: true, completion: nil)
    }
}
