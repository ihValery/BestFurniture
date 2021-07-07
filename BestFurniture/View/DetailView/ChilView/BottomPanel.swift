//
//  BottomPanel.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 6.07.21.
//

import SwiftUI

struct BottomPanel: View {
    var body: some View {
        HStack(spacing: 15) {
            Button(action: {}, label: {
                Image("cart")
                    .renderingMode(.template)
                    .resizable()
                    .frame(width: 23, height: 23)
                    .padding(5)
                    .foregroundColor(.orangeFurniture)
                    .frame(maxWidth: 50, maxHeight: 50)
                    .background(RoundedRectangle(cornerRadius: 12)
                                    .fill(Color.bgFurniture))
                
            })
            
            Button(action: {}, label: {
                Text("Add to cart")
                    .foregroundColor(.white)
                    .bold()
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.orangeFurniture))
                    
            })

        }
        .frame(maxWidth: .infinity, maxHeight: 50)
        .padding(.horizontal, 22)
        .padding(.bottom, 15)
    }
}

struct BottomPanel_Previews: PreviewProvider {
    static var previews: some View {
        BottomPanel()
    }
}
