//
//  ImageTopPanel.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 6.07.21.
//

import SwiftUI

struct ImageTopPanel: View {
    var name: String
    
    var body: some View {
        Image(name)
            .renderingMode(.template)
            .resizable()
            .frame(width: 23, height: 23)
            .padding(9)
            .foregroundColor(.purpleFurniture)
            .overlay(
                RoundedRectangle(cornerRadius: 13)
                    .stroke(Color.gray.opacity(0.5), lineWidth:1))
    }
}
