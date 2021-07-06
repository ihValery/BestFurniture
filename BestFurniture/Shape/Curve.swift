//
//  Curve.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 3.07.21.
//

import SwiftUI

struct Curve: Shape {
    var point: CGFloat
    
    //Так как хотим анимацию и задействуем animatableData с геттором и сеттором
    //То @Binding у position не нужен (фиолетовая ошибка)
    var animatableData: CGFloat {
        get { point }
        set { point = newValue }
    }
    
    init(_ point: CGFloat) {
        self.point = point
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 0, y: rect.height))
        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        path.addLine(to: CGPoint(x: point + 65, y: 0))

        path.addQuadCurve(to: CGPoint(x: point + 40, y: 10),
                          control: CGPoint(x: point + 50, y: 0))
        path.addQuadCurve(to: CGPoint(x: point - 40, y: 10),
                          control: CGPoint(x: point, y: 60))
        path.addQuadCurve(to: CGPoint(x: point - 65, y: 0),
                          control: CGPoint(x: point - 50, y: 0))

        return path
    }
}
