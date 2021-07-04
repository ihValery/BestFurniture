//
//  LikeButton.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 4.07.21.
//

import SwiftUI

struct LikeButton: View {
    @State private var likeOn: Bool = true
    let color: Color
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Button(action: {
                    likeOn.toggle()
                }, label: {
                    Image(likeOn ? "heart.fill" : "heart")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 15, height: 15)
                        .padding(5)
                        .foregroundColor(likeOn ? .orangeFurniture : .gray)
                        .background(
                            RoundedRectangle(cornerRadius: 6)
                                .fill(color)
                                .shadow(color: likeOn ? .gray.opacity(0.4) : color, radius: 1, x: 0, y: 1)
                                .shadow(color: likeOn ? .grayFurniture : color, radius: 10, x: 0, y: 10))
                })
                .padding(13)
                Spacer()
            }
        }
    }
}

struct LikeButton_Previews: PreviewProvider {
    static var previews: some View {
        LikeButton(color: .white)
    }
}
