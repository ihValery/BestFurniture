//
//  SelectPanelFurniture.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 4.07.21.
//

import SwiftUI

struct SelectPanelFurniture: View {
    @State private var selectFur: Int = 0
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                OneButtonFurniture(name: "Chair", number: 0, index: $selectFur, action: {})
                    .padding(.leading, 22)
                OneButtonFurniture(name: "Table", number: 1, index: $selectFur, action: {})
                
                OneButtonFurniture(name: "Cupboard", number: 2, index: $selectFur, action: {})
                
                OneButtonFurniture(name: "Sofa", number: 3, index: $selectFur, action: {})
                
                OneButtonFurniture(name: "Buffet", number: 4, index: $selectFur, action: {})
                    .padding(.trailing, 22)
            }
        }
    }
}

struct SelectPanelFurniture_Previews: PreviewProvider {
    static var previews: some View {
        SelectPanelFurniture()
    }
}
