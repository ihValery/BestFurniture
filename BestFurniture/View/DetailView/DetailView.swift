//
//  DetailView.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 6.07.21.
//

import SwiftUI

struct DetailView: View {
    let furniture: Furniture
    var cols: [GridItem]
    var frameBigImage: CGFloat
    @State private var image: String
    @State private var offset: CGFloat = 0
    
    init(furniture: Furniture) {
        self.furniture = furniture
        self.image = furniture.images[0]
        self.cols = [GridItem()]
        self.frameBigImage =  UIScreen.main.bounds.height > 750 ? 450 : 400
    }
    
    var body: some View {
            VStack {
                ScrollView {
                    LazyVGrid(columns: cols, pinnedViews: [.sectionHeaders, .sectionHeaders]) {
                        
                        Section(header:
                                    VStack {
                                        TopPanelDetail(furniture: furniture)
//                                            .offset(y: -offsetminY + 45)
//                                            .background(Color.white
//                                                            .frame(height: 100)
////                                                            .offset(y: offsetminY > 0 ? -500: -offsetminY + 25)
//    //                                                        .animation(.easeIn)
//        
//                                            )
                                        Spacer()
                                    }) {

                        
                        GeometryReader { gr -> AnyView in
                            let offsetminY = gr.frame(in: .global).minY
                            
                            if -offsetminY >= 0 {
                                DispatchQueue.main.async {
                                    offset = -offsetminY
                                }
                            }
                            
                            return AnyView(
                                Group {
//                                    VStack {
//                                        TopPanelDetail(furniture: furniture)
//                                            .offset(y: -offsetminY + 45)
//                                            .background(Color.white
//                                                            .frame(height: 100)
//                                                            .offset(y: offsetminY > 0 ? -500: -offsetminY + 25)
//    //                                                        .animation(.easeIn)
//
//                                            )
//                                        Spacer()
//                                    }
//                                    .zIndex(1)
                                    
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
                    }
                    }
                    
                    LazyVGrid(columns: cols, pinnedViews: [.sectionHeaders]) {
                        Section(header: HeaderDescription(furniture: furniture)

//                                    .offset(y: offset > frameBigImage - 75 ? CGFloat(UIApplication.shared.windows.first!.safeAreaInsets.top) : 0)
//                                    .animation(.easeIn)
                                    //прячем скрол в safeArea
//                                    .background(Color.red.opacity(0.3)
//                                                    .frame(height: 130)
//                                                    .offset(y: -40)
//                                                    .opacity(offset > frameBigImage - 100 ? 1 : 0))
                        ) {
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
        let futnitures = FurnitureViewModel().furnitures[3]
        DetailView(furniture: futnitures)
    }
}
