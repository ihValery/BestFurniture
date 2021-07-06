//
//  ImageFurniture.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 4.07.21.
//

import SwiftUI

struct ImageFurniture: View {
    var furniture: Furniture
    
    init(_ furniture: Furniture) {
        self.furniture = furniture
    }
    
    var body: some View {
        furniture.image
            .resizable()
            .scaledToFill()
            .padding(8)
            .frame(maxWidth: 115, maxHeight: 135)
            .background(RoundedRectangle(cornerRadius: 25)
                            .fill(RadialGradient(gradient: Gradient(colors: [.white, .bgFurniture]), center: .center, startRadius: 40, endRadius: 100)))
    }
}

struct OneImageFurniture_Previews: PreviewProvider {
    static var previews: some View {
        ImageFurniture(FurnitureViewModel().furnitures[0])
    }
}
