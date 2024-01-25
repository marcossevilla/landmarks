//
//  CircleImage.swift
//  landmarks
//
//  Created by Marcos Sevilla on 24/1/24.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: landmarks.first!.image)
}
