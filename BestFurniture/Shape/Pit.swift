//
//  Pit.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 3.07.21.
//

import SwiftUI

struct Pit: Shape {
    var pitPosition: CGFloat
    
    //Так как хотим анимацию и задействуем animatableData с геттором и сеттором
    //То @Binding у pitPosition не нужен (фиолетовая ошибка)
    var animatableData: CGFloat {
        get { pitPosition }
        set { pitPosition = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 0, y: rect.height))
        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        path.addLine(to: CGPoint(x: pitPosition + 65, y: 0))

        path.addQuadCurve(to: CGPoint(x: pitPosition + 40, y: 10),
                          control: CGPoint(x: pitPosition + 50, y: 0))
        path.addQuadCurve(to: CGPoint(x: pitPosition - 40, y: 10),
                          control: CGPoint(x: pitPosition, y: 60))
//        path.addRelativeArc(center: CGPoint(x: pitPosition, y: 10),
//                            radius: 40, startAngle: .degrees(0), delta: .degrees(180))
        path.addQuadCurve(to: CGPoint(x: pitPosition - 65, y: 0),
                          control: CGPoint(x: pitPosition - 50, y: 0))
//        path.addRelativeArc(center: CGPoint(x: pitPosition - 50, y: 10),
//                            radius: 10, startAngle: .degrees(0), delta: .degrees(-90))

        return path
    }
}
