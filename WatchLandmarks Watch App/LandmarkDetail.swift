//
//  LandmarkDetail.swift
//  WatchLandmarks Watch App
//
//  Created by Marcos Sevilla on 31/1/24.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(
            where: { $0.id == landmark.id}
        )!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView {
            VStack {
                CircleImage(image: landmark.image.resizable())
                    .scaledToFit()
                
                Text(landmark.name)
                    .font(.headline)
                    .lineLimit(0)
                
                Toggle(isOn: $modelData.landmarks[landmarkIndex].isFavorite) {
                    Text("Favorite")
                }
                
                Divider()
                
                Text(landmark.park)
                    .bold()
                    .font(.caption)
                    .lineLimit(0)
                
                Divider()
                
                
            }
            .padding(16)
        }
        .navigationTitle("Landmarks")
    }
}

#Preview {
    let modelData = ModelData()
    return LandmarkDetail(landmark: modelData.landmarks.first!)
        .environment(modelData)
}
