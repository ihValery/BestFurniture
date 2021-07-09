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
    private let cols = [GridItem()]
    
    private var filterFutnitures: [Furniture] {
        if category != .all {
            return viewModel.furnitures.filter { $0.category == category.rawValue }
        } else {
            return viewModel.furnitures
        }
    }
    
    var body: some View {
        NavigationView {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white, .white, .grayFurniture]), startPoint: .top, endPoint: .bottom)
            
            VStack(spacing: safeAreaInsets(10, or: 23)) {
                TopPanelMenu()
                    .padding(.top, safeAreaInsets(5, or: 0))
                
                BannerMainView()
                
                ScrollView {
                    SearchPanel(select: $category)
                        .padding(.bottom, 13)
                    
                    LazyVGrid(columns: cols, spacing: 13, pinnedViews: [.sectionHeaders]) {
                        Section(header: CategoryPanel(select: $category)) {
                            
                            ForEach(filterFutnitures) { item in
                                NavigationLink(
                                    destination: DetailView(furniture: item),
                                    label: {
                                        CardFurniture(furniture: item)
                                            .padding(.horizontal, 22)
                                    })
                                    .transition(.slide)
                                    .animation(.ripple(delay(item)))
                            }
                        }
                    }
                    .padding(.bottom, safeAreaInsets(65, or: 90))
                }
            }

//            AnimateOnAppear()

            TabBarMenu()
        }
        .navigationBarHidden(true)
        .edgesIgnoringSafeArea(.bottom)
        }
    }
    
    private func delay(_ furniture: Furniture) -> Int {
        guard let index = filterFutnitures.searchIndex(furniture) else { return 0 }
        return index
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(FurnitureViewModel())
    }
}
