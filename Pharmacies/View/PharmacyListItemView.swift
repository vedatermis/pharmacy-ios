//
//  PharmacyListItemView.swift
//  Pharmacies
//
//  Created by Vedat ERMIS on 27.07.2023.
//

import SwiftUI

struct PharmacyListItemView: View {
    let pharmacy: Pharmacy
    
    var body: some View {
        HStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 70)
            
            VStack (alignment: .leading, spacing: 3) {
                Text(pharmacy.eczaneAdi)
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
                
                HStack {
                    Text(pharmacy.ilce!)
                    
                    if pharmacy.semt != nil && pharmacy.semt != "" {
                        Text("-")
                        Text(pharmacy.semt!)
                    }
                        
                }
                .font(.system(size: 13))
                .foregroundColor(.red)
                
                Text(pharmacy.adresi)
                    .font(.system(size: 12))
                
            }
        }
    }
}

struct PharmacyListItemView_Previews: PreviewProvider {
    static let pharmacies: ApiResponse = Bundle.main.decode("pharmacy.json")
    static var previews: some View {
        PharmacyListItemView(pharmacy: pharmacies.data[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
