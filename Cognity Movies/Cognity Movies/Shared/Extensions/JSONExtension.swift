//
//  JSONExtension.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 3/2/23.
//

import Foundation
import SwiftyJSON
import ObjectMapper

extension JSON {
    
    func toObject<T: Mappable>(mappableType: T.Type) -> T? {
        if let rawString = self.rawString() {
            return Mapper<T>().map(JSONString: rawString)
        }
        return nil
    }
    
    func toArray<T: Mappable>(mappableType: T.Type) -> [T]? {
        if let rawString = self.rawString() {
            return Mapper<T>().mapArray(JSONString: rawString)
        }
        return nil
    }
    
}
