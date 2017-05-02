//
//  CreateBarViewController.swift
//  DrinkR
//
//  Created by Alex Laptop on 4/29/17.
//
//

import UIKit

class CreateBarViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var barNameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var websiteTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var barDescriptionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

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
    
    @IBAction func donePressed(_ sender: Any) {
        
        if(barNameTextField.text != "" && addressTextField.text != "" && websiteTextField.text != "" && emailTextField.text != "" && phoneTextField.text != "" && barDescriptionTextView.text != ""){
            
            //guard let barWebsiteString = websiteTextField.text else { return }
            
            let barURL = URL(string: websiteTextField.text!)
            
            if(barURL == nil){
                
            }
            
            var newBar = Bar(name: barNameTextField.text, address: addressTextField.text, website: barURL, email: emailTextField.text, phoneNumber: phoneTextField.text, description: barDescriptionTextView.text)
            
        } else{
            
            let needCorrectText = UIAlertController(title: "Error", message: "Please fill in all fields", preferredStyle: .alert)
            
            needCorrectText.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            
            self.present(needCorrectText, animated: true, completion: nil)
            
        }
        
    }
    
}
