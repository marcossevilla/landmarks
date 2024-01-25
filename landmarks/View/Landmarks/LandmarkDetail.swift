//
//  LandmarkDetail.swift
//  landmarks
//
//  Created by Marcos Sevilla on 24/1/24.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    
    var landmark: Landmark
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(
            where: { $0.id == landmark.id }
        )!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView {
            MapView(
                coordinate: landmark.locationCoordinate
            ).frame(height: 200)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -100)
            
            VStack(alignment: .leading)  {
                HStack {
                    Text(landmark.name).font(.title)
                    FavoriteButton(
                        isSet: $modelData.landmarks[landmarkIndex].isFavorite
                    )
                }
                
                HStack(alignment:.bottom) {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)").font(.title2)
                Text(landmark.description)
            }.padding(20)
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let modelData = ModelData()
    return LandmarkDetail(
        landmark: modelData.landmarks.first!
    ).environment(modelData)
}
