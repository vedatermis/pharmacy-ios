//
//  ContentView.swift
//  Pharmacies
//
//  Created by Vedat ERMIS on 26.07.2023.
//

import SwiftUI

struct ContentView: View {
    let pharmacies: ApiResponse = Bundle.main.decode("pharmacy.json")
    @State private var selectedCity = "İzmir"
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(pharmacies.data) { pharmacy in
                    NavigationLink(destination: PharmacyDetailView(pharmacy: pharmacy)) {
                        PharmacyListItemView(pharmacy: pharmacy)
                    }
                }
            }
            .navigationViewStyle(.stack)
            .navigationBarTitle(selectedCity, displayMode: .inline)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
