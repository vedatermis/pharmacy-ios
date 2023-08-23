//
//  ApplicationStateModel.swift
//  Pharmacies
//
//  Created by Vedat ERMIS on 19.08.2023.
//

import Foundation

class ApplicationStateModel: ObservableObject {
    @Published var cityName: String = "İstanbul"
    @Published var allPharmacies: ApiResponse = Bundle.main.decode("pharmacy.json")
}
