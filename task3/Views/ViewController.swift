//
//  ViewController.swift
//  task3
//
//  Created by Sergio Ramos on 26.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var button: UIButton!
    
    let viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingUI()
        viewModel.startSetUp()
        viewModel.model.description.bind(to: name)
        viewModel.model.buttonText.bind(to: button.reactive.title)
    }
    
    func settingUI() {
        name.backgroundColor = #colorLiteral(red: 0.4509803922, green: 0.6666666667, blue: 0.7803921569, alpha: 1)
        name.font = UIFont(name: "Helvetica Neue", size: 36)
        button.backgroundColor = #colorLiteral(red: 0.1529411765, green: 0.3176470588, blue: 0.4078431373, alpha: 1)
        button.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 17)
    }
    
    @IBAction func segway(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "name") as! InputNameViewController
        navigationController?.pushViewController(vc, animated: true)
        dismiss(animated: false, completion: nil)
    }
}

