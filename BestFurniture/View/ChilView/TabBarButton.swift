//
//  TabBarButton.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 3.07.21.
//

import SwiftUI

struct TabBarButton: View {
    let type: TabBar
    @Binding var select: TabBar
    @Binding var curve: CGFloat
    
    var body: some View {
        GeometryReader { gr in
            VStack {
                Button(action: {
                    withAnimation(.spring(dampingFraction: 0.6)) {
                        select = type
                    }
                    withAnimation(.spring(dampingFraction: 0.8)) {
                        curve = gr.frame(in: .global).midX
                    }
                }, label: {
                    Image(select == type ? "\(type.rawValue).fill" : type.rawValue)
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 28, height: 28)
                        .foregroundColor(select == type ? .white : .gray)
                        .font(.title2)
                        .padding(15)
                        .background(
                            Color.orangeFurniture
                                .opacity(select == type ? 1 : 0)
                                .clipShape(Circle())
                                .shadow(color: .orangeFurniture.opacity(0.6), radius: 5, x: 0, y: 5))
                })
                .offset(y: select == type ? -35 : 0)
                .disabled(select == type)
            }
            .frame(width: 43, height: 43)
        }
        .frame(width: 43, height: 43)
    }
}
