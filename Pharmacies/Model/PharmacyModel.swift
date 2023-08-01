//
//  PharmacyModel.swift
//  Pharmacies
//
//  Created by Vedat ERMIS on 27.07.2023.
//

import Foundation
import MapKit

struct Pharmacy: Codable, Identifiable
{
    let id: String = UUID().uuidString;
    
    let eczaneAdi, adresi: String
    let semt, yolTarifi: String?
    let telefon: String
    let telefon2: String?
    let sehir: String
    let ilce: String?
    let latitude, longitude: Double
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    enum CodingKeys: String, CodingKey {
        case eczaneAdi = "EczaneAdi"
        case adresi = "Adresi"
        case semt = "Semt"
        case yolTarifi = "YolTarifi"
        case telefon = "Telefon"
        case telefon2 = "Telefon2"
        case sehir = "Sehir"
        case ilce, latitude, longitude
    }
}
