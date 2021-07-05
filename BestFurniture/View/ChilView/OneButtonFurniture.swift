//
//  OneButtonFurniture.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 3.07.21.
//

import SwiftUI

struct OneButtonFurniture: View {
    let type: Category
    @Binding var select: Category
    let action: () -> ()
    
    var body: some View {
        Button(action: {
            withAnimation(.spring(dampingFraction: 0.6)) {
                select = type
            }
            action()
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
    }
}

struct SelectionFurniture_Previews: PreviewProvider {
    static var previews: some View {
        OneButtonFurniture(type: .all, select: .constant(.all), action: {})
    }
}
