//
//  ShowImageModel.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation
import ObjectMapper

class ShowImageModel: Mappable {
    
    // MARK: - Properties
    
    private(set) var thumbnail: String?
    private(set) var original: String?

    // MARK: - Life cycle
    
    required init?(map: Map) { }
    
    // MARK: - Methods
    
    func mapping(map: Map) {
        thumbnail          <- map["medium"]
        original        <- map["original"]
    }
    
    func getImageUrl() -> URL? {
        if let original = self.original {
            return URL(string: original)
        }
        return nil
    }
    
    func getThumbnailUrl() -> URL? {
        if let thumbnail = self.thumbnail {
            return URL(string: thumbnail)
        }
        return nil
    }
    
}
