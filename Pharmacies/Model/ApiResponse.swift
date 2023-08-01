//
//  ApiResponse.swift
//  Pharmacies
//
//  Created by Vedat ERMIS on 27.07.2023.
//

import Foundation

struct ApiResponse: Codable
{
    let status: String
    let message: String
    let rowCount: Int
    let data: [Pharmacy]
}
