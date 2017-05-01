//
//  CreateEventViewController.swift
//  DrinkR
//
//  Created by Alex Laptop on 4/29/17.
//
//

import UIKit

class CreateEventViewController: UIViewController {

    @IBOutlet weak var eventNameTextField: UITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var recurringSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var priceTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
