//
//  CategoryButton.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 3.07.21.
//

import SwiftUI

struct CategoryButton: View {
    let type: Category
    @Binding var select: Category
    
    var body: some View {
        Button(action: {
            select = type
        }, label: {
            HStack {
                HStack {
                    if select == type {
                        Image(type.rawValue.firstCapitalized)
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 28, height: 28)
                            .foregroundColor(.white)
                    }
                    Text(type.rawValue.firstCapitalized)
                        .foregroundColor(select == type ? .white : .purpleFurniture)
                        .font(.body)
                        .padding(.vertical, 5)
                }
                .fixedSize()
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .background(RoundedRectangle(cornerRadius: 13)
                                .fill(select == type ? Color.orangeFurniture : Color.clear))
                .overlay(
                    RoundedRectangle(cornerRadius: 13)
                        .stroke(Color.gray.opacity(0.5), lineWidth: select == type ? 0 : 1))
            }
            .padding(1)
        })
        .animation(.spring(dampingFraction: 0.6))
    }
}

struct SelectionFurniture_Previews: PreviewProvider {
    static var previews: some View {
        CategoryButton(type: .chair, select: .constant(.chair))
    }
}
