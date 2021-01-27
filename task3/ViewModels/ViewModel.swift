//
//  ViewModel.swift
//  task3
//
//  Created by Sergio Ramos on 27.01.2021.
//

import Bond

class ViewModel {
    
    var id = 0
    var model = Model()
    
    func startSetUp() {
        self.model.description = Observable<String>("\(HelperForLastScreens().loadJson(fileName: "json1", id: id)!.description)")
        self.model.buttonText = Observable<String>("\(HelperForLastScreens().loadJson(fileName: "json1", id: id)!.button_text)")
    }
}
