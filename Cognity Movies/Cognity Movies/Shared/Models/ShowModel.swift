//
//  ShowModel.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation
import ObjectMapper

class ShowModel: Mappable {
    
    // MARK: - Properties
    
    private(set) var name: String?
    private(set) var summary: String?
    private(set) var image: ShowImageModel?
    private(set) var rating: ShowRatingModel?

    // MARK: - Life cycle
    
    required init?(map: Map) { }
    
    // MARK: - Methods
    
    func mapping(map: Map) {
        name        <- map["name"]
        summary     <- map["summary"]
        image       <- map["image"]
        rating      <- map["rating"]
    }
    
}
