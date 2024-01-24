//
//  CircleImage.swift
//  landmarks
//
//  Created by Marcos Sevilla on 24/1/24.
//

import SwiftUI

struct CircleImage: View {
    private var overlay = Circle()
    var body: some View {
        Image("Turtle")
            .clipShape(overlay)
            .overlay(overlay.stroke(.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
