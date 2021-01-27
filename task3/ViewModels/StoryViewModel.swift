//
//  StoryViewModel.swift
//  task3
//
//  Created by Sergio Ramos on 27.01.2021.
//

import Bond

class StoryViewModel {
    
    var id = 0
    var model = StoryModel()
    var name = ""
    
    func startSetUp() {
        self.model.image = Observable<UIImage?>(UIImage(named: "\(HelperForMainScreens().loadJson(fileName: "json", id: id)!.image)"))
        self.model.name = Observable<String>("\(HelperForMainScreens().loadJson(fileName: "json", id: id)!.description)")
        self.model.actionOne = Observable<String>("\(HelperForMainScreens().loadJson(fileName: "json", id: id)!.action_1.text)")
        self.model.actionTwo = Observable<String>("\(HelperForMainScreens().loadJson(fileName: "json", id: id)!.action_2.text)")
        self.model.actionThree = Observable<String>("\(HelperForMainScreens().loadJson(fileName: "json", id: id)!.action_3.text)")
        self.model.v1 = Observable<Int>((HelperForMainScreens().loadJson(fileName: "json", id: id)!.action_1.id))
        self.model.v2 = Observable<Int>((HelperForMainScreens().loadJson(fileName: "json", id: id)!.action_2.id))
        self.model.v3 = Observable<Int>((HelperForMainScreens().loadJson(fileName: "json", id: id)!.action_3.id))
    }
}
