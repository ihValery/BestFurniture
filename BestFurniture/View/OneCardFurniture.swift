//
//  OneCardFurniture.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 4.07.21.
//

import SwiftUI

struct OneCardFurniture: View {
    var furniture: Furniture
    
    var body: some View {
        ZStack {
            HStack(spacing: 13) {
                OneImageFurniture(furniture: furniture)
                
                VStack(alignment: .leading) {
                    Text(furniture.name)
                        .bold()
                        .foregroundColor(.purpleFurniture)
                    
                    Spacer()
                    Text(furniture.info)
                        .lineLimit(2)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.body)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    HStack {
                        Text("$\(String(format: "%.1f", furniture.price))")
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
            
            LikeButton(color: .white)
        }
        .frame(maxWidth: .infinity, maxHeight: 160)
        .background(RoundedRectangle(cornerRadius: 25).fill(Color.white))
    }
}

struct OneCardFurniture_Previews: PreviewProvider {
    static var previews: some View {
        let item = dataFurniture[0]
        OneCardFurniture(furniture: item)
    }
}
