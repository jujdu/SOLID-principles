//
//  DataFetcherService.swift
//  SOLID-principles
//
//  Created by Michael Sidoruk on 02/09/2019.
//  Copyright © 2019 Michael Sidoruk. All rights reserved.
//

import Foundation

class DataFetcherService {
    
    var networkDataFetcher: DataFetcher!
    var localDataFetcher: DataFetcher
    
    init(dataFetcher: DataFetcher = NetworkDataFetcher(), localDataFetcher: DataFetcher = LocalDataFetcher()) {
        self.networkDataFetcher = dataFetcher
        self.localDataFetcher = localDataFetcher
    }
    
    func fetchCountry(completion: @escaping ([Country]?) -> ()) {
        let urlString = "https://raw.githubusercontent.com/Softex-Group/task-mobile/master/test.json"
        networkDataFetcher.fetchGenericJSONData(urlString: urlString, response: completion)

    }
    
    func fetchFreeGames(completion: @escaping (AppGroup?) -> ()) {
        let urlFreeApps = "https://rss.itunes.apple.com/api/v1/us/ios-apps/new-apps-we-love/all/100/explicit.json"
        networkDataFetcher.fetchGenericJSONData(urlString: urlFreeApps, response: completion)
    }
    
    func fetchLocalData(completion: @escaping (AppGroup?) -> ()) {
        let localUrlString = "usersAPI.txt"
        localDataFetcher.fetchGenericJSONData(urlString: localUrlString, response: completion)
    }
    
}
