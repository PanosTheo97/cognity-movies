//
//  ShowRatingModel.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation
import ObjectMapper

class ShowRatingModel: Mappable {
    
    // MARK: - Properties
    
    private(set) var average: Double?

    // MARK: - Life cycle
    
    required init?(map: Map) { }
    
    // MARK: - Methods
    
    func mapping(map: Map) {
        average          <- map["average"]
    }
    
}
