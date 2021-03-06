//
//  DrawingView.swift
//  drawingProject
//
//  Created by Shepherd, Kayden on 11/1/18.
//  Copyright © 2018 Ctec. All rights reserved.
//

import UIKit

public class DrawingView: UIView
{
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
     public override func draw(_ rect: CGRect) -> Void
    {
 //DrawingCode
createStickFigure().stroke()
        
    }
 private func createStickFigure() -> UIBezierPath
    {
        let figure : UIBezierPath = UIBezierPath()
        
       UIColor.magenta.setStroke()
        figure.lineWidth = 3.0
        figure.addArc(withCenter: CGPoint(x: 200, y:200),
        radius: CGFloat(20),
        startAngle: CGFloat(0),
        endAngle: CGFloat(2) * CGFloat.pi,
        clockwise: true)
        
        figure.move(to: CGPoint(x: 200, y: 220))
        figure.addLine(to: CGPoint(x: 200, y: 270))
        figure.move(to: CGPoint(x: 180, y: 240))
        figure.addLine(to: CGPoint(x: 220, y: 240))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 180, y: 300))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 220, y: 300))
        figure.move(to: CGPoint(x: 220, y: 300))
        figure.addLine(to: CGPoint(x: 185, y: 250))
        figure.move(to:CGPoint(x: 155, y: 200))
        figure.addLine(to:CGPoint(x: 185, y: 230))
        figure.move(to: CGPoint(x: 165, y: 240))

        return figure
    }
}
