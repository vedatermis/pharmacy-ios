//
//  PharmacyDetailView.swift
//  Pharmacies
//
//  Created by Vedat ERMIS on 27.07.2023.
//

import SwiftUI
import MapKit

struct PharmacyDetailView: View {
    let pharmacy: Pharmacy
    @State private var animation: Double = 0.0
    @StateObject var pharmacyDetailViewModel: PharmacyDetailViewModel = PharmacyDetailViewModel()
    
    var body: some View {
        
        NavigationView {
            Map(coordinateRegion: $pharmacyDetailViewModel.pharmacyRegion, interactionModes: .all, annotationItems: [pharmacy], annotationContent: { item in
                MapAnnotation(coordinate: item.location, content: {
                    MapAnnotationView(pharmacy: pharmacy)
                })
            })
            .ignoresSafeArea(.all)
        }
        .onAppear {
            pharmacyDetailViewModel.pharmacyRegion = MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: pharmacy.latitude, longitude: pharmacy.longitude),
                span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005))
        }
        
        
    }
    
    struct PharmacyDetailView_Previews: PreviewProvider {
        static let pharmacies: ApiResponse = Bundle.main.decode("pharmacy.json")
        static var previews: some View {
            PharmacyDetailView(pharmacy: pharmacies.data[0])
        }
    }
}
