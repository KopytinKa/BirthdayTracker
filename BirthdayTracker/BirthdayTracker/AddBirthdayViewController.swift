//
//  ViewController.swift
//  BirthdayTracker
//
//  Created by Кирилл Копытин on 02.04.2021.
//

import UIKit

class AddBirthdayViewController: UIViewController {
    
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var birthdatePicker: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        birthdatePicker.maximumDate = Date()
    }
    
    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
        print("Нажата кнопка сохранения")
        
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        let birthdate = birthdatePicker.date

        let newBirthday = Birthday(firstName: firstName, lastName: lastName, birthdate: birthdate)
        
        print("Create a new birthdate!")
        print("Last Name: \(newBirthday.lastName)")
        print("First Name: \(newBirthday.firstName)")
        print("Birthday: \(newBirthday.birthdate)")
    }
    
    @IBAction func cancelTabbed(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
}

