//
//  ViewController.swift
//  FastNews
//
//  Created by Fernando Ortiz on 10/22/17.
//  Copyright © 2017 Fernando Ortiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Life cycle -
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK: - Alert -
    func showAlert(title: String, message: String?) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Done", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        present(alertController, animated: true, completion: nil)
    }
    
    func showError(error: String) {
        self.showAlert(title: "Something went wrong!", message: error)
    }
    
}

