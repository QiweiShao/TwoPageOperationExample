//
//  PersonViewController.swift
//  SimpleApp
//
//  Created by katerina on 2019-12-05.
//  Copyright © 2019 katerina. All rights reserved.
//

import UIKit

class PersonViewController: UIViewController {
    
    var name = String()

    @IBOutlet weak var showName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        showName.text = name
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
