//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Marcos Sevilla on 1/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .frame(minWidth: 700, minHeight: 300)
    }
}

#Preview {
    ContentView().environment(ModelData())
}
