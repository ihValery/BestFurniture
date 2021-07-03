//
//  OneButtonTBM.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 3.07.21.
//

import SwiftUI

struct OneButtonTBM: View {
    var icon: String
    var number: Int
    @Binding var index: Int
    @Binding var pit: CGFloat
    
    var body: some View {
        GeometryReader { gr in
            VStack {
                Button(action: {
                    withAnimation(.spring(dampingFraction: 0.5)) {
                        index = number
                        pit = gr.frame(in: .global).midX
                    }
                }, label: {
                    if icon == "plus" {
                        Image(systemName: icon)
                            .foregroundColor(index == number ? .white : .gray)
                            .font(.title2)
                            .padding(15)
                            .background(
                                Color.orangeFurniture
                                    .opacity(index == number ? 1 : 0)
                                    .clipShape(Circle()))
                            .offset(y: index == number ? -35 : 0)
                    } else {
                        Image(systemName: index == number ? "\(icon).fill" : icon)
                            .foregroundColor(index == number ? .white : .gray)
                            .font(.title2)
                            .padding(15)
                            .background(
                                Color.orangeFurniture
                                    .opacity(index == number ? 1 : 0)
                                    .clipShape(Circle()))
                            .offset(y: index == number ? -35 : 0)
                    }
                })
            }
            .frame(width: 43, height: 43)
        }
        .frame(width: 43, height: 43)
    }
}
