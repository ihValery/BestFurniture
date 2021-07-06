//
//  LikeButton.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 4.07.21.
//

import SwiftUI

struct LikeButton: View {
    let color: Color
    let furniture: Furniture
//    @State private var likeOn: Bool = false
    @EnvironmentObject var viewModel: FurnitureViewModel
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Button(action: {
                    viewModel.like(furniture)
                }, label: {
                    Image(furniture.isFavorite ? "heart.fill" : "heart")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 15, height: 15)
                        .padding(5)
                        .foregroundColor(furniture.isFavorite ? .orangeFurniture : .gray)
                        .background(
                            RoundedRectangle(cornerRadius: 6)
                                .fill(color)
                                .shadow(color: furniture.isFavorite ? .gray.opacity(0.4) : color, radius: 1, x: 0, y: 1)
                                .shadow(color: furniture.isFavorite ? .grayFurniture : color, radius: 10, x: 0, y: 10))
                })
                .padding(13)
                Spacer()
            }
        }
    }
}

struct LikeButton_Previews: PreviewProvider {
    static var previews: some View {
        LikeButton(color: .white, furniture: FurnitureViewModel().furnitures[0])
    }
}
