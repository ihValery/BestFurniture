//
//  HeaderDescription.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 6.07.21.
//

import SwiftUI

struct HeaderDescription: View {
    private var price: Int = 250
    @State private var count: Int = 1
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Lyrra Moder Chait")
                .foregroundColor(.purpleFurniture)
                .font(.largeTitle)
            HStack {
                Group {
                    Text("".fullPrice(price: price, count: count))
                        .foregroundColor(.orangeFurniture)
                        .font(.title3).bold()
                        + Text(" ".discountPrice(count: count))
                        .foregroundColor(.orangeFurniture)
                        .font(.footnote)
                }
                .transition(.updatePrice)
                //Когда значение id, изменяется, идентификатор представления - например, его состояние - перересовывается.
                .id("".fullPrice(price: price, count: count))
                
                Spacer()
                StepperCustom(count: $count)
            }
        }
        .padding(.horizontal, 22)
        .padding(.bottom, 15)
    }
}

struct HeaderDescription_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDescription()
    }
}
