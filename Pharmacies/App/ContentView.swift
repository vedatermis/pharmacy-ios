//
//  ContentView.swift
//  Pharmacies
//
//  Created by Vedat ERMIS on 26.07.2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var applicationState: ApplicationStateModel
    @State private var isShowingSheet: Bool = false
    @State private var selectedList: [Pharmacy]?
        
    var body: some View {
        NavigationView {
            List {
                ForEach(selectedList ?? applicationState.allPharmacies.data.filter{ $0.sehir == applicationState.cityName }) { item  in
                    NavigationLink(destination: PharmacyDetailView(pharmacy: item)) {
                        PharmacyListItemView(pharmacy: item)
                    }
                }
            }
            .navigationViewStyle(.stack)
            .navigationBarTitle(applicationState.cityName, displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Button {
                            isShowingSheet.toggle()
                        } label: {
                            Image(systemName: "gear")
                        }
                    }
                }
            }
            .sheet(isPresented: $isShowingSheet) {
                SettingView(isShowingSheet: $isShowingSheet)
                    .presentationDragIndicator(.visible)
                    .presentationDetents([.medium, .large])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
            .environmentObject(ApplicationStateModel())
    }
}
