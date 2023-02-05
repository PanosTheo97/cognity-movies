//
//  ShowsService.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation

class ShowsService {
    
    // MARK: - Methods
    
    func doService(completion: @escaping ([ShowModel]?) -> Void) {
        NetworkManager.makeDataRequest(.get_tvShows) { result in
            switch result {
            case .success(let json):
                let generalResponse = json?.toArray(mappableType: ShowModel.self)
                if let shows = generalResponse {
                    completion(shows)
                } else {
                    completion(nil)
                }
            case .failure(let error, let json, let responseCode):
                print(responseCode, error)
                completion(nil)
            }
        }
    }
}
