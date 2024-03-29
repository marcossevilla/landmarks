//
//  CategoryHome.swift
//  landmarks
//
//  Created by Marcos Sevilla on 29/1/24.
//

import SwiftUI

struct CategoryHome: View {
    @Environment(ModelData.self) var modelData
    @State private var showProfile = false
    
    var body: some View {
        NavigationSplitView {
            List {
                PageView(pages: modelData.features.map { FeatureCard(landmark: $0) })
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            .navigationTitle("Featured")
            .toolbar {
                Button {
                    showProfile.toggle()
                } label: {
                    Label(
                        "User Profile",
                        systemImage: "person.crop.circle"
                    )
                }
            }
            .sheet(isPresented: $showProfile) {
                ProfileHost()
                    .environment(modelData)
            }
        } detail: {
            Text("Select a landmark")
        }
    }
}

#Preview {
    CategoryHome().environment(ModelData())
}
