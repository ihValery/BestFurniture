//
//  String.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 5.07.21.
//

import Foundation

extension StringProtocol {
    var firstCapitalized: String { prefix(1).capitalized + dropFirst() }
}

extension String {
    func discountPrice(count: Int) -> String {
        var discount: Float {
            if count >= 2 { return Float(count) * 2.5 }
            return 0
        }
        
        var discountStr: String {
            //.truncatingRemainder(dividingBy: ) это .isMultiple(of: ) для плавающей точки
            """
            discount \(discount.truncatingRemainder(dividingBy: 5) == 0 ?
            String(format: "%.0f", discount) :
            String(format: "%.1f", discount))%
            """
        }
        
        return " \(count >= 2 ? discountStr : "")"
    }
}

extension String {
    func fullPrice(price: Double, count: Int) -> String {
        var discount: Float {
            if count >= 2 { return Float(count) * 2.5 }
            return 0
        }
        let fullPrice = Float(price * Double(count))
        let result = fullPrice - fullPrice * discount / 100
        
        return "$\(result)"
    }
}
