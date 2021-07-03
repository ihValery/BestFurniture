//
//  TabBarMenu.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 3.07.21.
//

import SwiftUI

struct TabBarMenu: View {
    @State private var index = 2
    @State private var pitPosition: CGFloat = UIScreen.main.bounds.width / 2
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            Color.orangeFurniture.opacity(0.3)
            
            HStack {
                OneButtonTBM(icon: "house", number: 0, index: $index, pit: $pitPosition)
                Spacer()
                OneButtonTBM(icon: "heart", number: 1, index: $index, pit: $pitPosition)
                Spacer()
                OneButtonTBM(icon: "plus", number: 2, index: $index, pit: $pitPosition)
                Spacer()
                OneButtonTBM(icon: "cart", number: 3, index: $index, pit: $pitPosition)
                Spacer()
                OneButtonTBM(icon: "person", number: 4, index: $index, pit: $pitPosition)
            }
            .padding(.horizontal, 25)
            .padding(.bottom, 10)
            .padding(.top, 8)
            .background(Color.white.clipShape(Pit(pitPosition: pitPosition)))
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarMenu()
    }
}
