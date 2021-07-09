//
//  Description.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 6.07.21.
//

import SwiftUI

struct Description: View {
    let furniture: Furniture
    
    var body: some View {
        VStack {
            Text(furniture.description)
                .lineSpacing(15)
                .font(.body)
                .foregroundColor(.gray)
        }
        .padding(.horizontal, 22)
    }
}

struct Description_Previews: PreviewProvider {
    static var previews: some View {
        Description(furniture: FurnitureViewModel().furnitures[0])
    }
}
