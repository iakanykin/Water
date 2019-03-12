//
//  PushButton.swift
//  Water
//
//  Created by Student on 12/03/2019.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

@IBDesignable class PushButton: UIButton {

    @IBInspectable var fillColor = UIColor.green
    @IBInspectable var isAddButton = true
    
    private struct Constants {
        static let plusLineWidth: CGFloat = 3
        static let plusButtonScale: CGFloat = 0.6
        static let halfPointShift: CGFloat = 0.5
    }
    
    private var halfWidth: CGFloat {
        return bounds.width / 2
    }
    
    private var halfHeigth: CGFloat {
        return bounds.height / 2
    }
    
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        fillColor.setFill()
        path.fill()

    let plusWidth = min(bounds.width, bounds.height) * Constants.plusButtonScale
    let halfPlusWidth = plusWidth / 2
    
    let plusPath = UIBezierPath()
    plusPath.lineWidth = Constants.plusLineWidth
        plusPath.move(to: CGPoint(
            x: halfWidth - halfPlusWidth + Constants.halfPointShift,
            y: halfHeigth + Constants.halfPointShift
        ))
        
        plusPath.addLine(to: CGPoint(
            x: halfWidth + halfPlusWidth + Constants.halfPointShift,
            y: halfHeigth + Constants.halfPointShift))
        UIColor.white.setStroke()
        plusPath.stroke()
        
        if isAddButton {
        plusPath.move(to: CGPoint(
            x: halfWidth + Constants.halfPointShift,
            y: halfHeigth - halfPlusWidth + Constants.halfPointShift
        ))
        plusPath.addLine(to: CGPoint(
            x: halfWidth + Constants.halfPointShift,
            y: halfHeigth + halfPlusWidth + Constants.halfPointShift))
        plusPath.stroke()
        }
}
}
