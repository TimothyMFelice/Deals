//
//  NetworkService.swift
//  Deals
//
//  Created by Timothy Felice on 8/8/19.
//  Copyright © 2019 Timothy Felice. All rights reserved.
//

import Foundation
import Moya

private let apiKey = "0ZCCGfAILZ7GeeLVFKYYtMrIDoXXWu8RVTUeIBzzHs2uASqb6Lz6kutbaWLFZfRg3LEDTbAc1EabV6E0rHM_vQGd5r0JYNO7gp_HOIA_k1Lv5XOYKOtUv687f-pMXXYx"

enum YelpService {
    enum BusinessesProvider: TargetType {
        case search(lat: Double, long: Double)
        
        var baseURL: URL {
            return URL(string: "https://api.yelp.com/v3/businesses")!
        }
        
        var path: String {
            switch self {
            case .search:
                return "/search"
            }
        }
        
        var method: Moya.Method {
            return .get
        }
        
        var sampleData: Data {
            return Data()
        }
        
        var task: Task {
            switch self {
            case let .search(lat, long):
                return .requestParameters(parameters: ["latitude": lat, "longitude": long, "limit": 1], encoding: URLEncoding.queryString)
            }
        }
        
        var headers: [String : String]? {
            return ["Authorization": "Bearer \(apiKey)"]
        }
    }
}
