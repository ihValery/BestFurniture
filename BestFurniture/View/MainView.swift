//
//  MainView.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 3.07.21.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var viewModel: ModelData
    @State private var selectedСategory = Category.chair
    
    var filtelFutnitures: [Furniture] {
        if selectedСategory != .all {
            return viewModel.furnitures.filter { item in
                item.category == selectedСategory.rawValue
            }
        } else {
            return viewModel.furnitures
        }
    }
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white, .grayFurniture]), startPoint: .top, endPoint: .bottom)
            
            VStack(spacing: UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 10 : 27) {
                TopPanelMenu()
                
                BannerMainView()
                
                SearchPanel(selectedСategory: $selectedСategory)
                
                CategoryPanel(category: $selectedСategory)
                    .padding(.top, 10)
                
                ScrollView {
                    VStack(spacing: 13) {
                        ForEach(filtelFutnitures) { item in
                            OneCardFurniture(furniture: item)
                                .padding(.horizontal, 22)
                        }
                    }
                    .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 65 : 90)
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
            .environmentObject(ModelData())
    }
}
