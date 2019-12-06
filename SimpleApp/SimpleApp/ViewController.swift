//
//  ViewController.swift
//  SimpleApp
//
//  Created by katerina on 2019-12-05.
//  Copyright © 2019 katerina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false

        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

    @IBAction func start(_ sender: Any) {
        if inputName.text != ""
        {
            performSegue(withIdentifier: "toPerson", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextController = segue.destination as! PersonViewController
        nextController.name = inputName.text!
    }
    
}

