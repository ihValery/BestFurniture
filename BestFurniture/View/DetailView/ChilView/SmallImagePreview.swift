//
//  SmallImagePreview.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 7.07.21.
//

import SwiftUI

struct SmallImagePreviews: View {
    let name: String
    @Binding var selectImage: String
    
    var body: some View {
        VStack {
            Image(name)
                .resizable()
                .frame(width: 40, height: 40)
                .padding(5)
                .background(RoundedRectangle(cornerRadius: 13)
                                .fill(Color.white)
                                .shadow(color: .gray.opacity(selectImage == name ? 0.5 : 0), radius: 5, x: 2, y: 2)
)
                .overlay(
                        RoundedRectangle(cornerRadius: 13)
                            .stroke(selectImage == name ? Color.orangeFurniture : .gray.opacity(0.3), lineWidth: 1))
        }
        .onTapGesture {
            withAnimation { selectImage = name }
        }
    }
}
