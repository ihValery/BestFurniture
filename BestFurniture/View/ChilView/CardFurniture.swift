//
//  CardFurniture.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 4.07.21.
//

import SwiftUI

struct CardFurniture: View {
    var furniture: Furniture
    
    var body: some View {
        ZStack {
            HStack(spacing: 13) {
                ImageFurniture(furniture)
                
                VStack(alignment: .leading) {
                    Text(furniture.name)
                        .bold()
                        .foregroundColor(.purpleFurniture)
                    
                    Spacer()
                    Text(furniture.description)
                        .lineLimit(2)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.body)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    HStack {
                        Text(furniture.priceStr)
                            .font(.headline)
                            .bold()
                            .foregroundColor(.orangeFurniture)
                        Spacer()
                        Button(action: {}, label: {
                            Text("Buy")
                                .font(.footnote)
                                .foregroundColor(.white)
                                .padding(.horizontal, 10)
                                .padding(.vertical, 3)
                                .background(RoundedRectangle(cornerRadius: 8)
                                                .fill(Color.purpleFurniture))
                        })
                    }
                }
                .padding(.vertical, 7)
            }
            .padding(13)
            
            LikeButton(color: .white, furniture: furniture)
        }
        .frame(maxWidth: .infinity, maxHeight: 160)
        .background(RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .shadow(color: .grayFurniture, radius: 3, x: 0, y: -1)
                        .shadow(color: .grayFurniture, radius: 5, x: 0, y: 3))
    }
}

struct OneCardFurniture_Previews: PreviewProvider {
    static var previews: some View {
        CardFurniture(furniture: FurnitureViewModel().furnitures[0])
    }
}
