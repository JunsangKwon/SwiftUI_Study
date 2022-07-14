//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 권준상 on 2022/07/12.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
