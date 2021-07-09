//
//  TopPanelDetail.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 8.07.21.
//

import SwiftUI

struct TopPanelDetail: View {
    let furniture: Furniture
    @EnvironmentObject var viewModel: FurnitureViewModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        HStack {
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                ImageTopPanel(name: "back")
            })
            
            Spacer()
            
            Button(action: {
                viewModel.like(furniture)
            }, label: {
                Image(furniture.isFavorite ? "heart.fill" : "heart")
                    .renderingMode(.template)
                    .resizable()
                    .frame(width: 23, height: 23)
                    .padding(9)
                    .foregroundColor(furniture.isFavorite ? .orangeFurniture : .gray)
                    .overlay(
                        RoundedRectangle(cornerRadius: 13)
                            .stroke(Color.gray.opacity(0.5), lineWidth:1))
            })
        }
        .padding(.horizontal, 22)
    }
}

struct TopPanelDetail_Previews: PreviewProvider {
    static var previews: some View {
        TopPanelDetail(furniture: FurnitureViewModel().furnitures[0])
    }
}
