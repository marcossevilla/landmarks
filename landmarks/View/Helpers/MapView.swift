//
//  MapView.swift
//  landmarks
//
//  Created by Marcos Sevilla on 24/1/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    @AppStorage("MapView.zoom")
    private var zoom: Zoom = .medium
    
    enum Zoom: String, CaseIterable, Identifiable {
        case near = "Near"
        case medium = "Medium"
        case far = "Far"
        
        var id: Zoom {
            return self
        }
    }
    
    var delta: CLLocationDegrees {
        switch zoom {
            case .near: 0.02
            case .medium: 0.2
            case .far: 2
        }
    }
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(
                latitudeDelta: delta,
                longitudeDelta: delta
            )
        )
    }
}

#Preview {
    MapView(
        coordinate: ModelData().landmarks.first!.locationCoordinate
    )
}
