//
//  DetailView.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 6.07.21.
//

import SwiftUI

struct DetailView: View {
    let furniture: Furniture
    private let frameBigImage: CGFloat
    @State private var image: String 
    @ObservedObject var viewModel: FurnitureViewModel
    
    init(furniture: Furniture) {
        self.furniture = furniture
        image = furniture.images[0]
        frameBigImage = UIScreen.main.bounds.height > 750 ? 450 : 400
        viewModel = FurnitureViewModel()
    }
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: nil, pinnedViews: [.sectionHeaders], content: {
                    
                    //Parallax Header
                    GeometryReader { gr -> AnyView in
                        let offset = gr.frame(in: .global).minY
                        
                        //Что бы спрятать скролл в безопасной зоне
                        DispatchQueue.main.async {
                            viewModel.offset = -offset
                        }
                        
                        return AnyView(
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
                                .padding(.top, 70)
                                
                                Spacer()
                                BigImagePreview(name: $image)
                            }
                            .offset(y: offset > 0 ? -offset : 0)
                            .frame(height: frameBigImage + (offset > 0 ? offset : 0))
                            
                            .overlay(
                                TopPanelDetail(furniture: furniture)
                                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                                    .offset(y: offset > 0 ? -offset : 0)
                                , alignment: .top)
                        )
                    }
                    .frame(height: frameBigImage)
                    //Parallax Header
                    
                    Section(header: HeaderDescription(furniture: furniture, viewModel: viewModel)) {
                        Description(furniture: furniture)
                    }
                })
            }
            //Закрываем баг скрола
            .overlay(
                Color.white
                    .frame(height: UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .ignoresSafeArea(.all, edges: .top)
                    .opacity(viewModel.offset > frameBigImage ? 1 : 0)
                , alignment: .top
            )
            
            Spacer()
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
        DetailView(furniture: futnitures)
    }
}
