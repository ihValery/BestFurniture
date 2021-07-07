//
//  AnimateOnAppear.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 6.07.21.
//

import SwiftUI

struct AnimateOnAppear: View {
    @State private var expand = false
    
    var body: some View {
        VStack {
            Spacer()
            Circle()
                .fill(Color.orangeFurniture)
                .scaleEffect(expand ? 0 : 20)
                .offset(y: 310)
                .edgesIgnoringSafeArea(.all)
                .onAppear {
                    expand.toggle()
                }
                .animation(.linear)
        }
    }
}

struct AnimateOnAppear_Previews: PreviewProvider {
    static var previews: some View {
        AnimateOnAppear()
    }
}
