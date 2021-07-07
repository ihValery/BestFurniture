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
            HStack {
                Spacer()
                
                VStack(spacing: 20) {
                    ForEach(imageArray, id: \.self) { item in
                        ImagePreviews(name: item)
                            .onTapGesture {
                                image = item
                            }
                    }
                }
                
                Spacer()
                BigImagePreview(name: $image)
            }
            
            Description()
                .padding(22)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

struct ImagePreviews: View {
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
