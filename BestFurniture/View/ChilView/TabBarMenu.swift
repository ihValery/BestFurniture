//
//  TabBarMenu.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 3.07.21.
//

import SwiftUI

struct TabBarMenu: View {
    private let safeArea = ScreenSize()
    @State private var button = TabBar.plus
    @State private var position: CGFloat = UIScreen.main.bounds.width / 2
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                TabBarButton(type: .home, select: $button, curve: $position)
                Spacer()
                TabBarButton(type: .heart, select: $button, curve: $position)
                Spacer()
                TabBarButton(type: .plus, select: $button, curve: $position)
                Spacer()
                TabBarButton(type: .cart, select: $button, curve: $position)
                Spacer()
                TabBarButton(type: .user, select: $button, curve: $position)
            }
            //В зависимости от девайса у нас разный padding
            .padding(.horizontal, safeArea.insets(25, or: 30))
            .padding(.bottom, safeArea.insets(8))
            .padding(.top, 8)
            .background(Color.white.clipShape(Curve(position)))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarMenu()
    }
}
