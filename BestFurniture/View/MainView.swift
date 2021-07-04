//
//  MainView.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 3.07.21.
//

import SwiftUI

struct MainView: View {
    @State private var selectFur: Int = 0
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white, .grayFurniture]), startPoint: .top, endPoint: .bottom)
            
            VStack(spacing: 27) {
                TopPanelMenu()
                
                BannerMainView()
                
                SearchPanel(selectFur: $selectFur)
                
                SelectPanelFurniture(selectFur: $selectFur)
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
