//
//  MainView.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 3.07.21.
//

import SwiftUI

struct MainView: View {
    @State private var search: String = ""
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.white, Color.grayFurniture]), startPoint: .top, endPoint: .bottom)
            
            VStack(spacing: 30) {
                TopPanelMenu()
                    .padding(.horizontal, 30)
                
                BannerMainView()
                    .padding(.horizontal, 30)
                
                
                    
                HStack {
                    HStack {
                         Image("search")
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 28, height: 28)
                            .foregroundColor(.purpleFurniture)
                            .padding(.leading)
                         
                         ZStack(alignment: .leading) {
                            if search == "" { Text("Search here...").opacity(0.7) }
                             TextField("", text: $search)
                         }
                    }
                    .padding(.vertical, 10)
                    .background(
                        RoundedRectangle(cornerRadius: 13)
                            .fill(Color.white)
                            .shadow(color: .grayFurniture, radius: 10, x: 0, y: 4))
                    
                    Button(action: {}, label: {
                        Image("tune")
                            .renderingMode(.template)
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 28, height: 28)
                            .padding(10)
                            .background(RoundedRectangle(cornerRadius: 13)
                                            .fill(Color.orangeFurniture))
                    })
                }
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
