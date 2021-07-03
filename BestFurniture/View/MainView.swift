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
                
                BannerMainView()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        SelectionFurniture(name: "Chair", action: {})
                        SelectionFurniture(name: "Table", action: {})
                        SelectionFurniture(name: "Cupboard", action: {})
                        SelectionFurniture(name: "Sofa", action: {})
                        SelectionFurniture(name: "Buffet", action: {})
                    }
                }
                Spacer()
            }
            .padding(.top)
            .padding(30)
            
            TabBarMenu()
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
