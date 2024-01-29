//
//  CategoryItem.swift
//  landmarks
//
//  Created by Marcos Sevilla on 29/1/24.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .resizable()
                .cornerRadius(5)
                .frame(width: 155, height: 155)
            
            Text(landmark.name)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

#Preview {
    CategoryItem(landmark: ModelData().landmarks.first!)
}
