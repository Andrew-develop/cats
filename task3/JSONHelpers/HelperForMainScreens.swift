//
//  Helper.swift
//  task3
//
//  Created by Sergio Ramos on 26.01.2021.
//

import Foundation

class HelperForMainScreens {
    
    struct ResponseData: Decodable {
        var screens : [Screen]
    }
    struct Screen : Decodable {
        var image : String
        var description : String
        var action_1 : Action
        var action_2 : Action
        var action_3 : Action
    }
    struct Action : Decodable {
        var text : String
        var id : Int
    }
    
    func loadJson(fileName : String, id : Int) -> Screen? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(ResponseData.self, from: data)
                return jsonData.screens[id]
            }
            catch {
                print("error:\(error)")
            }
        }
        return nil
    }
}
