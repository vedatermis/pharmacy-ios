//
//  MapAnnotationView.swift
//  Pharmacies
//
//  Created by Vedat ERMIS on 28.07.2023.
//

import SwiftUI
import MapKit

struct MapAnnotationView: View {
    
    var pharmacy: Pharmacy
    @State private var animation: Double = 0.0
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(Color.primary)
                    .frame(width: 36, height: 36, alignment: .center)
                
                Circle()
                    .stroke(Color.red, lineWidth: 2)
                    .frame(width: 34, height: 34, alignment: .center)
                    .scaleEffect(1 + CGFloat(animation))
                    .opacity(1 - animation)
                
                Image(systemName: "mappin.circle")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.accentColor)
                    .frame(width: 36, height: 36, alignment: .center)
                    .clipShape(Circle())
            } //: ZStack
            .onAppear {
                withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                    animation = 1
                }
            }
            
            Text(pharmacy.eczaneAdi)
                .font(.system(size: 12))
                .fontWeight(.medium)
        } //: VStack
        .onTapGesture {
            openMapsAppWithLocation()
        }
    }
    
    func openMapsAppWithLocation() {
        let location = CLLocationCoordinate2D(latitude: pharmacy.latitude, longitude: pharmacy.longitude)
        let placemark = MKPlacemark(coordinate: location, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = pharmacy.eczaneAdi
        mapItem.openInMaps(launchOptions: nil)
    }
}

struct MapAnnotationView_Previews: PreviewProvider {
    static let pharmacies: ApiResponse = Bundle.main.decode("pharmacy.json")
    static var previews: some View {
        MapAnnotationView(pharmacy: pharmacies.data[0])
    }
}
