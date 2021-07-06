//
//  TopPanelMenu.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 4.07.21.
//

import SwiftUI

struct TopPanelMenu: View {
    var body: some View {
        HStack {
            ImageTopPanel(name: "fourSquares")
            Spacer()
            ImageTopPanel(name: "cart")
        }
        .padding(.horizontal, 22)
    }
}

struct TopPanelMenu_Previews: PreviewProvider {
    static var previews: some View {
        TopPanelMenu()
    }
}
