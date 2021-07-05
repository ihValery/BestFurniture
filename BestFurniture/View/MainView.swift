//
//  MainView.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 3.07.21.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var viewModel: FurnitureViewModel
    @State private var category = Category.chair
    private let safeArea = ScreenSize()
    private let cols = [GridItem()]
    
    private var filtelFutnitures: [Furniture] {
        if category != .all {
            return viewModel.furnitures.filter { $0.category == category.rawValue }
        } else {
            return viewModel.furnitures
        }
    }
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white, .white, .grayFurniture]), startPoint: .top, endPoint: .bottom)
            
            VStack(spacing: safeArea.insets(10, or: 23)) {
                TopPanelMenu()
                    .padding(.top, safeArea.insets(5, or: 0))
                
                BannerMainView()
                
                ScrollView {
                    SearchPanel(select: $category)
                        .padding(.bottom, 13)
                    
                    LazyVGrid(columns: cols, spacing: 13, pinnedViews: [.sectionHeaders]) {
                        Section(header: CategoryPanel(select: $category)) {
                            
                            ForEach(filtelFutnitures) { item in
                                OneCardFurniture(furniture: item)
                                    .padding(.horizontal, 22)
                            }
                        }
                    }
                    .padding(.bottom, safeArea.insets(65, or: 90))
                }
            }
            
            TabBarMenu()
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(FurnitureViewModel())
    }
}
