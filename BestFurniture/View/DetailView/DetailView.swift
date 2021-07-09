//
//  DetailView.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 6.07.21.
//

import SwiftUI

struct DetailView: View {
    let furniture: Furniture
    @State var image: String
    @State private var offset: CGFloat = 0
    var cols = [GridItem()]
    var frameBigImage: CGFloat = UIScreen.main.bounds.height > 750 ? 450 : 400
    
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
                                TopPanelDetail(furniture: furniture)
                                Spacer()
                            }
                            .offset(y: offsetminY > 0 ? -offsetminY + 45 : 45)
                            .zIndex(1)
                            
                            HStack {
                                Spacer()
                                
                                VStack(spacing: 20) {
                                    ForEach(furniture.images, id: \.self) { item in
                                        SmallImagePreviews(name: item)
                                            .onTapGesture {
                                                withAnimation { image = item }
                                            }
                                    }
                                }
                                
                                Spacer()
                                BigImagePreview(name: $image)
                            }
                            .offset(y: offsetminY > 0 ? -offsetminY : 0)
                            .frame(height: offsetminY > 0 ? frameBigImage + offsetminY : frameBigImage)
                        }
                    )
                    
                }
                .frame(height: frameBigImage)
                
                LazyVGrid(columns: cols, pinnedViews: [.sectionHeaders]) {
                    Section(header: HeaderDescription(furniture: furniture)
                                //прячем скрол в safeArea
                                .background(Color.white
                                                .frame(height: 130)
                                                .offset(y: -40)
                                                .opacity(offset > frameBigImage ? 1 : 0))) {
                        Description(furniture: furniture)
                    }
                }
            }
            
            BottomPanel()
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let futnitures = FurnitureViewModel().furnitures[0]
        DetailView(furniture: futnitures, image: futnitures.images[0])
    }
}
