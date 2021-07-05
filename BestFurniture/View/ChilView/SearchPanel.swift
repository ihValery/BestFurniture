//
//  SearchPanel.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 4.07.21.
//

import SwiftUI

struct SearchPanel: View {
    @State private var search: String = ""
    @Binding var selectedСategory: Category
    
    var body: some View {
        HStack {
            HStack {
                Image("search")
                    .renderingMode(.template)
                    .resizable()
                    .frame(width: 28, height: 28)
                    .foregroundColor(.purpleFurniture)
                    .padding(.leading, 8)
                
                ZStack(alignment: .leading) {
                    if search == "" { Text("Search here...").opacity(0.5) }
                    TextField("", text: $search)
                }
            }
            .padding(.vertical, 12)
            .background(
                RoundedRectangle(cornerRadius: 13)
                    .fill(Color.white)
                    .shadow(color: .grayFurniture, radius: 10, x: 0, y: 10))
            
            Button(action: {
                withAnimation(.spring(dampingFraction: 0.4)) {
                    selectedСategory = .all
                }
            }, label: {
                Image("tune")
                    .renderingMode(.template)
                    .resizable()
                    .foregroundColor(this() ? .purpleFurniture : .white)
                    .frame(width: 28, height: 28)
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 13)
                                    .fill(this() ? Color.grayFurniture : .orangeFurniture))
            })
        }
        .padding(.horizontal, 22)
    }
    
    private func this() -> Bool {
        selectedСategory == .all
    }
}

struct SearchPanel_Previews: PreviewProvider {
    static var previews: some View {
        SearchPanel(selectedСategory: .constant(.all))
    }
}
