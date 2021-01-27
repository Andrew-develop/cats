//
//  HelperForLastScreens.swift
//  task3
//
//  Created by Sergio Ramos on 26.01.2021.
//

import Foundation

class HelperForLastScreens {
    
    struct ResponseData: Decodable {
        var screens : [Screen]
    }
    struct Screen : Decodable {
        var description : String
        var button_text : String
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
