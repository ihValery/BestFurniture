//
//  BigImagePreview.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 7.07.21.
//

import SwiftUI

struct BigImagePreview: View {
    @Binding var name: String
    
    var body: some View {
        VStack {
            Image(name)
                .resizable()
                .scaledToFit()
                .scaleEffect(1.1)
                .offset(y: 45)
        }
        .frame(maxWidth: getRect().width * 3 / 4, maxHeight: .infinity)
        .background(CustomCorners(corner: [.bottomLeft, .topRight], radius: 40)
                        .fill(RadialGradient(gradient: Gradient(colors: [.white, .bgFurniture]), center: .center, startRadius: 40, endRadius: 100)))
    }
}
