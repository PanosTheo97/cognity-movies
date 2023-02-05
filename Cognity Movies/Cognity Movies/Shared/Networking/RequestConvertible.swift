//
//  RequestConvertible.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation
import Alamofire

enum RequestConvertible: URLRequestConvertible {

    case get_tvShows

    func asURLRequest() throws -> URLRequest {
        switch self {
        case .get_tvShows:
            return try buildRequest(urlPathComponent:  "shows",
                                    httpMethod: .get)
        }
    }
    
    func buildRequest(urlPathComponent: String, httpMethod: HTTPMethod) throws -> URLRequest {

        let components = URLComponents(url: TvMazeConstants.baseURL.appendingPathComponent(urlPathComponent), resolvingAgainstBaseURL: true)
        
        guard let url = components?.url else {
            return URLRequest(url: URL(fileURLWithPath: ""))
        }
        
        var urlRequest = URLRequest(url: url)
        
        urlRequest.cachePolicy = .reloadIgnoringLocalCacheData
        urlRequest.timeoutInterval  = 15.0
        urlRequest.httpMethod = httpMethod.rawValue
    
        return urlRequest
    }
    
}
