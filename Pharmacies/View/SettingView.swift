//
//  SettingView.swift
//  Pharmacies
//
//  Created by Vedat ERMIS on 19.08.2023.
//

import SwiftUI

struct SettingView: View {
    @Environment(\.presentationMode) var presentation
    @EnvironmentObject var applicationState: ApplicationStateModel
    @Binding var isShowingSheet: Bool
    
    let cities: Cities = Bundle.main.decode("cities.json")
    
    var body: some View {
        
        List(cities.cities) { city in
            Button {
                applicationState.cityName = city.name
                isShowingSheet = false
                
            } label: {
                Text(city.name)
            }
            .contentShape(Rectangle())

        }

    }
}

struct SettingView_Previews: PreviewProvider {
    @State static var value = false
    static var previews: some View {
        SettingView(isShowingSheet: $value)
    }
}
