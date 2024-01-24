//
//  ContentView.swift
//  landmarks
//
//  Created by Marcos Sevilla on 24/1/24.
//

import SwiftUI

struct ContentView: View {
    private var imageOffset = -100.0
    private var frameHeight = 300.0
    
    var body: some View {
        VStack {
            MapView().frame(height: frameHeight)
            
            CircleImage()
                .offset(y: imageOffset)
                .padding(.bottom, imageOffset)
            
            VStack(alignment: .leading)  {
                Text("Turtle Rock")
                    .bold()
                    .font(.title)
                
                HStack(alignment:.bottom) {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About Turtle Rock").font(.title2)
                Text("Descriptive text goes here.")
            }.padding(20)
        }
        Spacer()
    }
}

#Preview {
    ContentView()
}
