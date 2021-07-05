//
//  MainView.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 3.07.21.
//

import SwiftUI

struct MainView: View {
    @State private var category: Int = 0
    @EnvironmentObject var viewModel: ModelData
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white, .grayFurniture]), startPoint: .top, endPoint: .bottom)
            
            VStack(spacing: UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 10 : 27) {
                TopPanelMenu()
                
                BannerMainView()

                SearchPanel(selectFur: $category)
                
                CategoryPanel(selectFur: $category)
                    .padding(.top, 10)
                
                ScrollView {
                    VStack(spacing: 13) {
                        ForEach(viewModel.furnitures) { item in
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
