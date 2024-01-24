//
//  LandmarkList.swift
//  landmarks
//
//  Created by Marcos Sevilla on 24/1/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) {
                landmark in NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } 
            label: {
                    LandmarkRow(landmark: landmark)
                }
            }.navigationTitle("Landmarks")
        }
        detail: {
            Text("Select a landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
