//
//  NetworkManager.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation
import Alamofire
import SwiftyJSON

class NetworkManager {
    
    // MARK: - Properties
    
    static let networkReachabilityManager = NetworkReachabilityManager()
    
    // MARK: - Methods
    
    static func start() {
        self.initializeReachability()
    }
    
    private static func initializeReachability() {
        self.networkReachabilityManager?.startListening(onUpdatePerforming: { (status) in
            switch status {
            case .notReachable:
                print("Current network status: not reachable")
            case .reachable(.ethernetOrWiFi):
                print("Current network status: ethernetOrWiFi")
            case .reachable(.cellular):
                print("Current network status: cellular")
            case .unknown:
                print("Current network status: unknown")
            }
        })
    }
    
    static func makeDataRequest(_ requestConvertible: RequestConvertible, result: @escaping (ResultEnum) -> Void) {
        AF.request(requestConvertible).validate().responseJSON(completionHandler: { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                result(.success(json))
            case .failure(let error):
                var json: JSON?
                if let data = response.data {
                    json = JSON(data)
                }
                result(.failure(error: error, json: json, responseCode: error.responseCode))
            }
        })
    }
    
}

enum ResultEnum {
    case success(JSON?)
    case failure(error: Error?, json: JSON?, responseCode: Int?)
}
