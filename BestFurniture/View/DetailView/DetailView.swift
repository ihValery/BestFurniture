//
//  DetailView.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 6.07.21.
//

import SwiftUI

let imageArray: [String] = ["chair1brown", "chair1green", "chair1red", "chair1orange"]

struct DetailView: View {
    @State private var image: String = imageArray[0]
    
    var body: some View {
        VStack {
            
            ScrollView {
                HStack {
                    Spacer()
                    
                    VStack(spacing: 20) {
//                        ForEach(imageArray, id: \.self) { item in
//                            SmallImagePreviews(name: item)
//                                .onTapGesture { image = item }
//                        }
                    }
                    
                    Spacer()
                    BigImagePreview(name: $image)
                }
                .aspectRatio(0.85, contentMode: .fit)

                
                HeaderDescription()
                
                Description()
            }
            
            BottomPanel()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
