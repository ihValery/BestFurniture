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
    @State private var offset: CGFloat = 0
    private var cols = [GridItem()]
    
    var body: some View {
        VStack {
            ScrollView {
                GeometryReader { gr -> AnyView in
                    let offsetminY = gr.frame(in: .global).minY
                    
                    if -offsetminY >= 0 {
                        DispatchQueue.main.async {
                            offset = -offsetminY
                        }
                    }
                    
                    return AnyView(
                        Group {
                            VStack {
                                TopPanelMenu()
                                Spacer()
                            }
                            .offset(y: offsetminY > 0 ? -offsetminY + 45 : 45)
                            .zIndex(1)
                            
                            HStack {
                                Spacer()
                                
                                VStack(spacing: 20) {
                                    ForEach(imageArray, id: \.self) { item in
                                        SmallImagePreviews(name: item)
                                            .onTapGesture {
                                                withAnimation { image = item }
                                            }
                                    }
                                }
                                
                                Spacer()
                                BigImagePreview(name: $image)
                                    .offset(y: offsetminY > 0 ? -offsetminY : 0)
                                    .frame(height: offsetminY > 0 ? 410 + offsetminY : 410)
                            }
//                            .aspectRatio(0.85, contentMode: .fit)
                        }
                    )
                    
                }
                .frame(height: 410)
                
                LazyVGrid(columns: cols, pinnedViews: [.sectionHeaders]) {
                    Section(header: HeaderDescription()
                                //прячем скрол в safeArea
                                .background(Color.white
                                                .frame(height: 130)
                                                .offset(y: -40)
                                                .opacity(offset > 410 ? 1 : 0))) {
                        Description()
                    }
                }
            }
            
            BottomPanel()
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
