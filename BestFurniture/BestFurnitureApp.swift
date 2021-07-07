//
//  BestFurnitureApp.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 3.07.21.
//

import SwiftUI

@main
struct BestFurnitureApp: App {
    @StateObject var viewModel = FurnitureViewModel()
    
    var body: some Scene {
        WindowGroup {
            DetailView()
                .environmentObject(viewModel)
        }
    }
}
