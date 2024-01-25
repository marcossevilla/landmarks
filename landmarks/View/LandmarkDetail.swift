//
//  LandmarkDetail.swift
//  landmarks
//
//  Created by Marcos Sevilla on 24/1/24.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(
                coordinate: landmark.locationCoordinate
            ).frame(height: 200)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -100)
            
            VStack(alignment: .leading)  {
                Text(landmark.name)
                    .bold()
                    .font(.title)
                
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
    LandmarkDetail(landmark: landmarks.first!)
}
