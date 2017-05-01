//
//  CreatePatronViewController.swift
//  DrinkR
//
//  Created by Alex Laptop on 4/27/17.
//
//

import UIKit

class CreatePatronViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var birthdayDatePicker: UIDatePicker!
    
//MARK: VC Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    
    override func viewWillAppear(_ animated: Bool) {
        
        
        
    }
  
    
//MARK: Image Picker Methods
    @IBAction func addPhotoPressed(_ sender: Any) {
        
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        
        self.present(imagePicker, animated: true, completion: nil)
        
    }

    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true){}
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            
            picker.dismiss(animated: true, completion: {
                
                self.imageView.image = image
                
//                let imageData = UIImageJPEGRepresentation(image, 1.0)
//                self.dao.putImageInStorage(nameOfFile: "sample", imageData: imageData!)
            })
            
        }
        
    }
    
    
    
    @IBAction func doneButtonPressed(_ sender: Any) {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        let datalex = formatter.string(from: birthdayDatePicker.date)
        print(datalex)
        print(birthdayDatePicker.date)
        

        if(firstNameTextField.text != "" && lastNameTextField.text != "" && emailTextField.text != ""){
            
            var newPatron = Patron(firstName: firstNameTextField.text!, lastName: lastNameTextField.text!, email: emailTextField.text!, birthday: datalex)
            
            if let image = imageView.image{
                newPatron.photo = image
            } else {
                //newPatron.photo = defaultImage
            }
            
        } else {
            let needCorrectText = UIAlertController(title: "Error", message: "Please fill in all fields", preferredStyle: .alert)
            
            needCorrectText.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            
            self.present(needCorrectText, animated: true, completion: nil)
        }
        
    }
    
}
