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
            LinearGradient(gradient: Gradient(colors: [Color.white, Color.grayFurniture]), startPoint: .top, endPoint: .bottom)
            
            VStack(spacing: 30) {
                TopPanelMenu()
                    .padding(.horizontal, 30)
                
                BannerMainView()
                    .padding(.horizontal, 30)
                
                SelectPanelFurniture()
                
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
