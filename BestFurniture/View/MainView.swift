//
//  MainView.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 3.07.21.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white, .grayFurniture]), startPoint: .top, endPoint: .bottom)
            
            VStack(spacing: 27) {
                TopPanelMenu()
                    .padding(.horizontal, 22)
                
                BannerMainView()
                    .padding(.horizontal, 22)
                
                SearchPanel()
                    .padding(.horizontal, 22)
                
                SelectPanelFurniture()
                    .padding(.top, 10)
                
                Spacer()
            }
            
            TabBarMenu()
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
