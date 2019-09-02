//
//  LocalDataFetcher.swift
//  SOLID-principles
//
//  Created by Michael Sidoruk on 02/09/2019.
//  Copyright © 2019 Michael Sidoruk. All rights reserved.
//

import Foundation

class LocalDataFetcher: NetworkDataFetcher {
    
    override func fetchGenericJSONData<T>(urlString: String, response: @escaping (T?) -> ()) where T : Decodable {
        guard let file = Bundle.main.url(forResource: urlString, withExtension: nil) else { print("can't")
            response(nil)
            return
        }
        
        let data = try? Data(contentsOf: file)
        
        let decoded = self.decodeJSON(type: T.self, from: data)
        response(decoded)
    }
    
}
