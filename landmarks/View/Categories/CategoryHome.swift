//
//  CategoryHome.swift
//  landmarks
//
//  Created by Marcos Sevilla on 29/1/24.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        NavigationSplitView {
            Text("Hello, world!")
                .navigationTitle("Featured")
        } detail: {
            Text("Select a landmark")
        }
    }
}

#Preview {
    CategoryHome()
}
