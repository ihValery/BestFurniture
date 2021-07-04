//
//  OneCardFurniture.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 4.07.21.
//

import SwiftUI

struct OneCardFurniture: View {
    var body: some View {
        ZStack {
            HStack(spacing: 13) {
                OneImageFurniture()
                
                VStack(alignment: .leading) {
                    Text("Lyrra Chair")
                        .bold()
                        .foregroundColor(.purpleFurniture)
                    
                    Spacer()
                    Text("Ergonomical for humans body curve")
                        .lineLimit(2)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.body)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    HStack {
                        Text("$250.0")
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
        .padding(.horizontal, 22)
    }
}

struct OneCardFurniture_Previews: PreviewProvider {
    static var previews: some View {
        OneCardFurniture()
    }
}
