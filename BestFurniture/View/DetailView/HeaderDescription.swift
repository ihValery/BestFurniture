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
                Text(discountPrice())
                    .foregroundColor(.orangeFurniture)
                    .font(.title3).bold()
                
                Spacer()
                StepperCustom(count: $count)
            }
        }
    }
    
    private func discountPrice() -> String {
        var discount: Float {
            if count >= 2 { return Float(count) * 2.5 }
            return 0
        }
        let fullPrice = Float(price * count)
        let result = fullPrice - fullPrice * discount / 100
        
        return "$\(result) \(count >= 2 ? " discount \(discount)%" : "")"
    }
}

struct HeaderDescription_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDescription()
    }
}
