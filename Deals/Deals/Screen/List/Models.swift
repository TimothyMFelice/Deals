//
//  Models.swift
//  Deals
//
//  Created by Timothy Felice on 8/9/19.
//  Copyright © 2019 Timothy Felice. All rights reserved.
//

import Foundation

struct Root: Codable {
    let businessess: [Business]
}

struct Business: Codable {
    let id: String
    let name: String
    let imageURL: URL
    let distance: Double
}

struct RestaurantListViewModel {
    let name: String
    let imageURL: URL
    let distance: String
    let id: String
}

extension RestaurantListViewModel {
    init(business: Business) {
        self.name = business.name
        self.id = business.id
        self.imageURL = business.imageURL
        self.distance = "\(business.distance / 1609.344)"
        
    }
}
