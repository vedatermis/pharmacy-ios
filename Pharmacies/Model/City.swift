//
//  City.swift
//  Pharmacies
//
//  Created by Vedat ERMIS on 19.08.2023.
//

import Foundation

struct City: Identifiable, Codable {
    let id: Int
    let name: String
}

struct Cities: Codable {
    let cities: [City]
}
