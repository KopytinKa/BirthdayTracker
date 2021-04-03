//
//  ViewController.swift
//  BirthdayTracker
//
//  Created by Кирилл Копытин on 02.04.2021.
//

import UIKit

protocol AddBirthdayViewControllerDelegate {
    
    func addBirthdayViewController(_ addBirthdayViewController: AddBirthdayViewController, didAddBirthday birthday: Birthday)
}

class AddBirthdayViewController: UIViewController {
    
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var birthdatePicker: UIDatePicker!
    
    var delegate: AddBirthdayViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        birthdatePicker.maximumDate = Date()
    }
    
    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        let birthdate = birthdatePicker.date

        let newBirthday = Birthday(firstName: firstName, lastName: lastName, birthdate: birthdate)
        
        delegate?.addBirthdayViewController(self, didAddBirthday: newBirthday)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelTabbed(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
}

