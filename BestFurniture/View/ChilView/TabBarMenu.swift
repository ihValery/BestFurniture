//
//  TabBarMenu.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 3.07.21.
//

import SwiftUI

struct TabBarMenu: View {
    var sz = ScreenSize()
    @State private var index = 2
    @State private var pitPosition: CGFloat = UIScreen.main.bounds.width / 2
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                OneButtonTBM(icon: "home", number: 0, index: $index, pit: $pitPosition)
                Spacer()
                OneButtonTBM(icon: "heart", number: 1, index: $index, pit: $pitPosition)
                Spacer()
                OneButtonTBM(icon: "plus", number: 2, index: $index, pit: $pitPosition)
                Spacer()
                OneButtonTBM(icon: "cart", number: 3, index: $index, pit: $pitPosition)
                Spacer()
                OneButtonTBM(icon: "user", number: 4, index: $index, pit: $pitPosition)
            }
            //В зависимости от девайса у нас разный padding
            .padding(.horizontal, sz.insets(25, or: 30))
            .padding(.bottom, sz.insets(8))
            .padding(.top, 8)
            .background(Color.white.clipShape(Pit(pitPosition: pitPosition)))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarMenu()
    }
}
