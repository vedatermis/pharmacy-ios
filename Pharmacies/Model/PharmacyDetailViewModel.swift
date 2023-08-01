//
//  PharmacyDetailViewModel.swift
//  Pharmacies
//
//  Created by Vedat ERMIS on 29.07.2023.
//

import Foundation
import MapKit

class PharmacyDetailViewModel: ObservableObject {
    @Published var pharmacyRegion = MKCoordinateRegion()
}
