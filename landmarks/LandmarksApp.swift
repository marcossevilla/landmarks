//
//  LandmarksApp.swift
//  landmarks
//
//  Created by Marcos Sevilla on 24/1/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(ModelData())
        }
        #if !os(watchOS)
        .commands {
            LandmarkCommands()
        }
        #endif
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
        
        #if os(macOS)
        Settings {
            LandmarkSettings()
        }
        #endif
    }
}
