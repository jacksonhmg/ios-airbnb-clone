//
//  AirbnbListingsResponse.swift
//  airbnb-ios-clone
//
//  Created by jackson mowatt gok on 20/10/2023.
//

import Foundation

struct AirbnbListingsResponse: Codable {
    let total_count: Int
    let results: [AirbnbListing]
}
