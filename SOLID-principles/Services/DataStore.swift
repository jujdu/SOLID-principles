//
//  DataStore.swift
//  SOLID-principles
//
//  Created by Michael Sidoruk on 02/09/2019.
//  Copyright © 2019 Michael Sidoruk. All rights reserved.
//

import Foundation

class DataStore {
    
    // Сохранение данных в кеш/базу данных
    func savenameInCache(name: String) {
        print("Your name: \(name) is saved")
    }
    
    // Получать данные из кеша/базы данных
    func getNameFromCache() -> String {
        return "some name"
    }
}
