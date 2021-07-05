//
//  BestFurnitureApp.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 3.07.21.
//

import SwiftUI

@main
struct BestFurnitureApp: App {
    @StateObject private var viewModel = ModelData()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(viewModel)
        }
    }
}
