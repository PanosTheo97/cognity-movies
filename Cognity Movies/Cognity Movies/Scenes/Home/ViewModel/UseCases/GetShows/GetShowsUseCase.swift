//
//  GetShowsUseCase.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation

class GetShowsUseCase {
    
    // MARK: - Properties
    var showsService: ShowsService
    
    // MARK: - Life cycle
    
    init(showsService: ShowsService) {
        self.showsService = showsService
    }
    
    // MARK: - Methods
    
    func execute(completion: @escaping ([ShowModel]) -> Void) {
        showsService.doService { showsData in
            if let showsData = showsData {
                completion(showsData)
            } else {
                completion([])
            }
        }
    }
    
}
