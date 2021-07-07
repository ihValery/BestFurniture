//
//  SmallImagePreview.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 7.07.21.
//

import SwiftUI

struct SmallImagePreviews: View {
    let name: String
    
    var body: some View {
        VStack {
            Image(name)
                .resizable()
                .frame(width: 40, height: 40)
                .padding(5)
                .background(RoundedRectangle(cornerRadius: 13)
                                .fill(Color.grayFurniture))
                .overlay(
                        RoundedRectangle(cornerRadius: 13)
                            .stroke(Color.orangeFurniture, lineWidth: 1))
        }
    }
}
