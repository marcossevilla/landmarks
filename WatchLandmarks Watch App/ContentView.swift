//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by Marcos Sevilla on 31/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView().environment(ModelData())
}
