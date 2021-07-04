//
//  OneButtonFurniture.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 3.07.21.
//

import SwiftUI

struct OneButtonFurniture: View {
    let name: String
    let number: Int
    @Binding var index: Int
    let action: () -> ()
    
    var body: some View {
        Button(action: {
            withAnimation(.spring(dampingFraction: 0.7)) {
                index = number
            }
            action()
        }, label: {
            HStack {
                HStack {
                    if index == number {
                        Image(name)
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 28, height: 28)
                            .foregroundColor(.white)
                    }
                    Text(name)
                        .foregroundColor(index == number ? .white : .purpleFurniture)
                        .font(.title2)
                }
                .padding(.horizontal)
                .padding(.vertical, 11)
                .background(RoundedRectangle(cornerRadius: 13)
                                .fill(index == number ? Color.orangeFurniture : Color.clear))
                .overlay(
                    RoundedRectangle(cornerRadius: 13)
                        .stroke(Color.gray.opacity(0.5), lineWidth: index == number ? 0 : 1))
            }
            .padding(1)
        })
    }
}

struct SelectionFurniture_Previews: PreviewProvider {
    static var previews: some View {
        OneButtonFurniture(name: "Table", number: 1, index: .constant(1), action: {})
    }
}
