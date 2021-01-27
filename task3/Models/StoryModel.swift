//
//  StoryModel.swift
//  task3
//
//  Created by Sergio Ramos on 27.01.2021.
//

import Bond

class StoryModel {
    
    var image = Observable<UIImage?>(nil)
    var name = Observable<String>("")
    var actionOne = Observable<String>("")
    var actionTwo = Observable<String>("")
    var actionThree = Observable<String>("")
    
    var v1 = Observable<Int>(0)
    var v2 = Observable<Int>(0)
    var v3 = Observable<Int>(0)
    
}
