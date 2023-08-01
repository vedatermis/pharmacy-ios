//
//  TestView.swift
//  Pharmacies
//
//  Created by Vedat ERMIS on 30.07.2023.
//

import SwiftUI
import MapKit

struct TestView: View {
    let locationName = "Golden Gate Bridge"
        let latitude: Double = 37.8199
        let longitude: Double = -122.4783
    
    var body: some View {
        VStack {
                   Text("Location: \(locationName)")
                       .padding()
                   
                   Button("Open in Maps") {
                       openMapsAppWithLocation1()
                   }
                   .padding()
               }
    }
    
    func openMapsAppWithLocation() {
            if let url = URL(string: "https://maps.apple.com/?address=\(latitude),\(longitude)") {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    
    func openMapsAppWithLocation1() {
        let location = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let placemark = MKPlacemark(coordinate: location, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = locationName
        mapItem.openInMaps(launchOptions: nil)
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
