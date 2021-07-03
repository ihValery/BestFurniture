//
//  SelectionFurniture.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 3.07.21.
//

import SwiftUI

struct SelectionFurniture: View {
    let name: String
    let action: () -> ()
    @State private var tapBttn = true
    
    var body: some View {
        Button(action: {
            withAnimation(.spring(dampingFraction: 0.7)) {
                tapBttn.toggle()
            }
            action()
        }, label: {
            HStack {
                HStack {
                    if tapBttn {
                        Image(name)
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 28, height: 28)
                            .foregroundColor(.white)
                    }
                    Text(name)
                        .foregroundColor(tapBttn ? .white : .purpleFurniture)
                        .font(.title2)
                }
                .padding(.horizontal)
                .padding(.vertical, 11)
                .background(RoundedRectangle(cornerRadius: 13)
                                .fill(tapBttn ? Color.orangeFurniture : Color.clear))
                .overlay(
                    RoundedRectangle(cornerRadius: 13)
                        .stroke(Color.gray.opacity(0.5), lineWidth: tapBttn ? 0 : 1))
            }
        })
        .padding(1)
    }
}

struct SelectionFurniture_Previews: PreviewProvider {
    static var previews: some View {
        SelectionFurniture(name: "Chair", action: {})
    }
}
