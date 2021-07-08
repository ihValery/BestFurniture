//
//  Description.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 6.07.21.
//

import SwiftUI

struct Description: View {
    var body: some View {
        VStack {
            Text("The beautiful Egg chair by Arne Jacobsen is made even prettier and slightly more comfortable with the matching footrest. Arne Jacobsen designed Egg for the lobby and reception areas at the SAS Royal Hotel in Copenhagen. Decorate this classic lightweight armchair with a footrest for a homey, comfortable and beautiful experience. When Arne Jacobsen designed the SAS Royal Hotel in Copenhagen in the late 1950s, he also created the Egg, Swan, Swan sofa, 3300 Series and Drop. With this furniture, Arne Jacobsen rewrote the history of Danish design around the world. The casing is made of synthetic material, lined with cold curing foam, covered with fabric or leather. Leg stool without swivel function. The stem is a star-shaped base made of polished satin-finished aluminum, and the tips are made from black nylon.The beautiful Egg chair by Arne Jacobsen is made even prettier and slightly more comfortable with the matching footrest. Arne Jacobsen designed Egg for the lobby and reception areas at the SAS Royal Hotel in Copenhagen. Decorate this classic lightweight armchair with a footrest for a homey, comfortable and beautiful experience. When Arne Jacobsen designed the SAS Royal Hotel in Copenhagen in the late 1950s, he also created the Egg, Swan, Swan sofa, 3300 Series and Drop. With this furniture, Arne Jacobsen rewrote the history of Danish design around the world. The casing is made of synthetic material, lined with cold curing foam, covered with fabric or leather. Leg stool without swivel function. The stem is a star-shaped base made of polished satin-finished aluminum, and the tips are made from black nylon.")
                .lineSpacing(15)
                .font(.body)
                .foregroundColor(.gray)
        }
        //        .aspectRatio(1.1, contentMode: .fit)
        .padding(.horizontal, 22)
    }
}

struct Description_Previews: PreviewProvider {
    static var previews: some View {
        Description()
    }
}
