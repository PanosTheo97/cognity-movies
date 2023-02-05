//
//  ShowDetailsSetupuseCase.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation

class ShowDetailsSetupUseCase {
    
    
    func execute(showData: ShowModel, completion: @escaping ([ShowDetailsTableViewDataEnum]) -> Void) {
        var showDetailsTableViewDataEnum: [ShowDetailsTableViewDataEnum] = []
        showDetailsTableViewDataEnum.append(.showImage(imageUrl: showData.image?.getImageUrl()))
        showDetailsTableViewDataEnum.append(.showDetails(showName: showData.name,
                                                         showRating: showData.rating?.average,
                                                         showDescription: showData.summary))
        completion(showDetailsTableViewDataEnum)
    }
    
}
