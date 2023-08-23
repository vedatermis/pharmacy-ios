//
//  MainView.swift
//  Pharmacies
//
//  Created by Vedat ERMIS on 27.07.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ContentView().environmentObject(ApplicationStateModel())
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .colorScheme(.dark)
    }
}
