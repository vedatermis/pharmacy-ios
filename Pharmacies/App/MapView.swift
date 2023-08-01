//
//  MapView.swift
//  Pharmacies
//
//  Created by Vedat ERMIS on 27.07.2023.
//

import SwiftUI

struct MapView: View {
    let pharmacy: Pharmacy
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct MapView_Previews: PreviewProvider {
    static let pharmacies: ApiResponse = Bundle.main.decode("pharmacy.json")
    static var previews: some View {
        MapView(pharmacy: pharmacies.data[0])
    }
}
