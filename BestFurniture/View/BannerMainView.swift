//
//  BannerMainView.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 4.07.21.
//

import SwiftUI

struct BannerMainView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Best Furniture")
                    .font(.largeTitle.bold())
                    .foregroundColor(.purpleFurniture)
                Text("Perfect Choice!")
                    .font(.body.bold())
                    .foregroundColor(.orangeFurniture)
            }
            Spacer()
        }
        .padding(.horizontal, 22)
    }
}

struct BannerMainView_Previews: PreviewProvider {
    static var previews: some View {
        BannerMainView()
    }
}
