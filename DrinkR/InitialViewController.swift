//
//  InitialViewController.swift
//  DrinkR
//
//  Created by Alex Laptop on 4/29/17.
//
//

import UIKit

class InitialViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func newPatronPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "showNewPatron", sender: self)
    }
    
    @IBAction func newBarPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "showNewBar", sender: self)
    }
    
    @IBAction func newEventPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "showNewEvent", sender: self)
    }
    
}
