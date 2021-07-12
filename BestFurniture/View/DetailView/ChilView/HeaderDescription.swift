//
//  HeaderDescription.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 6.07.21.
//

import SwiftUI

struct HeaderDescription: View {
    let furniture: Furniture
    @State private var count: Int = 1
    @ObservedObject var viewModel: FurnitureViewModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack(spacing: 0) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "arrow.left")
                        .font(.title2)
                        .frame(width: getSize(), height: getSize(), alignment: .leading)
                })
                
                Text(furniture.name)
                    .font(.title)
            }
            .foregroundColor(.purpleFurniture)
            
            HStack {
                Group {
                    Text("".fullPrice(price: furniture.price, count: count))
                        .foregroundColor(.orangeFurniture)
                        .font(.title3).bold()
                        + Text(" ".discountPrice(count: count))
                        .foregroundColor(.orangeFurniture)
                        .font(.footnote)
                }
                .transition(.updatePrice)
                //Когда значение id, изменяется, идентификатор представления - например, его состояние - перересовывается.
                .id("".fullPrice(price: furniture.price, count: count))
                
                Spacer()
                StepperCustom(count: $count)
            }
        }
        .padding(.horizontal, 22)
        .padding(.bottom, 15)
        .background(Color.white)
    }
    
    //Получение размера кнопки и создание анимации
    private func getSize() -> CGFloat {
        guard viewModel.offset > 50 else { return 0 }
        let progress = (viewModel.offset - 50) / 50
        
        return progress <= 1 ? progress * 40 : 40
    }
}

struct HeaderDescription_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDescription(furniture: FurnitureViewModel().furnitures[0], viewModel: FurnitureViewModel())
    }
}
