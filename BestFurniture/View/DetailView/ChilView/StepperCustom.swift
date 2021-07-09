//
//  StepperCustom.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 6.07.21.
//

import SwiftUI

struct StepperCustom: View {
    @Binding var count: Int
    
    var body: some View {
        HStack(spacing: 10) {
            Button(action: {
                withAnimation(.linear) {
                    if count >= 2 { count -= 1 }
                }
            }, label: {
                Image(systemName: "minus")
                    .font(.footnote)
                    .frame(width: 11, height: 11)
                    .padding(5)
                    .foregroundColor(.purpleFurniture)
                    .background(
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.bgFurniture))
            })
            
            Text(String(format: "%02d", count))
                .font(.body)
            
            Button(action: {
                withAnimation(.linear) {
                    if count < 10 { count += 1 }
                }
            }, label: {
                Image(systemName: "plus")
                    .font(.footnote)
                    .frame(width: 11, height: 11)
                    .padding(5)
                    .foregroundColor(.white)
                    .background(
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.orangeFurniture))
            })
        }
    }
}

struct StepperCustom_Previews: PreviewProvider {
    static var previews: some View {
        StepperCustom(count: .constant(1))
    }
}
