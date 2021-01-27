//
//  StoryViewController.swift
//  task3
//
//  Created by Sergio Ramos on 26.01.2021.
//

import UIKit

class StoryViewController: UIViewController {

    @IBOutlet weak var kiryusha: UIImageView!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var actionOne: UIButton!
    @IBOutlet weak var actionTwo: UIButton!
    @IBOutlet weak var actionThree: UIButton!
    
    let viewModel = StoryViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.startSetUp()
        viewModel.model.name.bind(to: name)
        viewModel.model.actionOne.bind(to: actionOne.reactive.title)
        viewModel.model.actionTwo.bind(to: actionTwo.reactive.title)
        viewModel.model.actionThree.bind(to: actionThree.reactive.title)
        viewModel.model.image.bind(to: backgroundImage.reactive.image)
        
        if viewModel.id == 0 {
            kiryusha.isHidden = false
            name.text = "Отлично, \(viewModel.name)! Чем займемся?"
        }
        name.backgroundColor = #colorLiteral(red: 0.1529411765, green: 0.3176470588, blue: 0.4078431373, alpha: 1)
        [actionOne, actionTwo, actionThree].forEach { (b) in
            b?.backgroundColor = #colorLiteral(red: 0.4509803922, green: 0.6666666667, blue: 0.7803921569, alpha: 1)
            if b!.currentTitle!.isEmpty {
                b!.isHidden = true
            }
        }
    }
    
    @IBAction func segway(_ sender: UIButton) {
        if sender.tag == 1 {
            if viewModel.model.v1.value != 11 {
                let vc = storyboard?.instantiateViewController(withIdentifier: "main") as! StoryViewController
                vc.viewModel.id = viewModel.model.v1.value
                navigationController?.pushViewController(vc, animated: true)
            }
            else {
                let vc = storyboard?.instantiateViewController(withIdentifier: "last") as! ViewController
                vc.viewModel.id = 1
                navigationController?.pushViewController(vc, animated: true)
            }
        }
        else if sender.tag == 2 {
            if viewModel.model.v2.value != 11 {
                let vc = storyboard?.instantiateViewController(withIdentifier: "main") as! StoryViewController
                vc.viewModel.id = viewModel.model.v2.value
                navigationController?.pushViewController(vc, animated: true)
            }
            else {
                let vc = storyboard?.instantiateViewController(withIdentifier: "last") as! ViewController
                vc.viewModel.id = 1
                navigationController?.pushViewController(vc, animated: true)
            }
        }
        else if sender.tag == 3 {
            if viewModel.model.v3.value != 11 {
                let vc = storyboard?.instantiateViewController(withIdentifier: "main") as! StoryViewController
                vc.viewModel.id = viewModel.model.v3.value
                navigationController?.pushViewController(vc, animated: true)
            }
            else {
                let vc = storyboard?.instantiateViewController(withIdentifier: "last") as! ViewController
                vc.viewModel.id = 1
                navigationController?.pushViewController(vc, animated: true)
            }
        }
        dismiss(animated: false, completion: nil)
    }
}
