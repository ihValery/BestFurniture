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
            OneImageForTPM(name: "fourSquares")
            Spacer()
            OneImageForTPM(name: "cart")
        }
    }
}

struct TopPanelMenu_Previews: PreviewProvider {
    static var previews: some View {
        TopPanelMenu()
    }
}

struct OneImageForTPM: View {
    var name: String
    
    var body: some View {
        Image(name)
            .renderingMode(.template)
            .resizable()
            .frame(width: 28, height: 28)
            .padding(13)
            .foregroundColor(.purpleFurniture)
            .overlay(
                RoundedRectangle(cornerRadius: 13)
                    .stroke(Color.gray.opacity(0.5), lineWidth:1))
    }
}