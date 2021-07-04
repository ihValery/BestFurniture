//
//  OneImageFurniture.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 4.07.21.
//

import SwiftUI

struct OneImageFurniture: View {
    var body: some View {
        Image("chair1red")
            .resizable()
            .scaledToFill()
            .padding(8)
            .frame(maxWidth: 114, maxHeight: 134)
            .background(RoundedRectangle(cornerRadius: 25)
                            .fill(RadialGradient(gradient: Gradient(colors: [.white, .bgFurniture]), center: .center, startRadius: 40, endRadius: 100)))
    }
}

struct OneImageFurniture_Previews: PreviewProvider {
    static var previews: some View {
        OneImageFurniture()
    }
}
