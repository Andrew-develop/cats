//
//  InputNameViewController.swift
//  task3
//
//  Created by Sergio Ramos on 26.01.2021.
//

import UIKit

class InputNameViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func segway(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "main") as! StoryViewController
        vc.viewModel.name = textField.text!
        navigationController?.pushViewController(vc, animated: true)
        dismiss(animated: false, completion: nil)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
}
