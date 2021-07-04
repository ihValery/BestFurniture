//
//  OneButtonTBM.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 3.07.21.
//

import SwiftUI

struct OneButtonTBM: View {
    let icon: String
    let number: Int
    @Binding var index: Int
    @Binding var pit: CGFloat
    
    var body: some View {
        GeometryReader { gr in
            VStack {
                Button(action: {
                    withAnimation(.spring(dampingFraction: 0.6)) {
                        index = number
                    }
                    withAnimation(.spring(dampingFraction: 0.8)) {
                        pit = gr.frame(in: .global).midX
                    }
                }, label: {
                    Image(index == number ? "\(icon).fill" : icon)
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 28, height: 28)
                        .foregroundColor(index == number ? .white : .gray)
                        .font(.title2)
                        .padding(15)
                        .background(
                            Color.orangeFurniture
                                .opacity(index == number ? 1 : 0)
                                .clipShape(Circle())
                                .shadow(color: .orangeFurniture.opacity(0.6), radius: 5, x: 0, y: 5))
                })
                .offset(y: index == number ? -35 : 0)
            }
            .frame(width: 43, height: 43)
        }
        .frame(width: 43, height: 43)
    }
}
