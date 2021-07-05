//
//  CategoryPanel.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 4.07.21.
//

import SwiftUI

struct CategoryPanel: View {
    @Binding var category: Category
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                OneButtonFurniture(type: .chair, select: $category, action: {})
                    .padding(.leading, 22)
                
                OneButtonFurniture(type: .table, select: $category, action: {})
                
                OneButtonFurniture(type: .cupboard, select: $category, action: {})
                
                OneButtonFurniture(type: .sofa, select: $category, action: {})
                
                OneButtonFurniture(type: .buffet, select: $category, action: {})
                    .padding(.trailing, 22)
            }
        }
    }
}

struct SelectPanelFurniture_Previews: PreviewProvider {
    static var previews: some View {
        CategoryPanel(category: .constant(.chair))
    }
}
