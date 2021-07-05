//
//  CategoryPanel.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 4.07.21.
//

import SwiftUI

struct CategoryPanel: View {
    @Binding var category: Category
    
    //Для красоты вызова )))
    init(select: Binding<Category>) {
        _category = select
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(spacing: 15) {
                CategoryButton(type: .chair, select: $category)
                    .padding(.leading, 22)
                
                CategoryButton(type: .table, select: $category)
                
                CategoryButton(type: .cupboard, select: $category)
                
                CategoryButton(type: .sofa, select: $category)
                
                CategoryButton(type: .buffet, select: $category)
                    .padding(.trailing, 22)
            }
            .padding(.top, 3)
            .padding(.bottom, 10)
        }
        .background(Color.white)
    }
}

struct SelectPanelFurniture_Previews: PreviewProvider {
    static var previews: some View {
        CategoryPanel(select: .constant(.chair))
    }
}
