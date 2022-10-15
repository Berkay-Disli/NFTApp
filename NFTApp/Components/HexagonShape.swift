//
//  HexagonShape.swift
//  NFTApp
//
//  Created by Berkay Disli on 15.10.2022.
//

import SwiftUI

struct HexagonShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.46622*width, y: 0.30056*height))
        path.addCurve(to: CGPoint(x: 0.53378*width, y: 0.30056*height), control1: CGPoint(x: 0.48712*width, y: 0.28911*height), control2: CGPoint(x: 0.51288*width, y: 0.28911*height))
        path.addLine(to: CGPoint(x: 0.69443*width, y: 0.38855*height))
        path.addCurve(to: CGPoint(x: 0.72821*width, y: 0.44406*height), control1: CGPoint(x: 0.71533*width, y: 0.4*height), control2: CGPoint(x: 0.72821*width, y: 0.42116*height))
        path.addLine(to: CGPoint(x: 0.72821*width, y: 0.62004*height))
        path.addCurve(to: CGPoint(x: 0.69443*width, y: 0.67556*height), control1: CGPoint(x: 0.72821*width, y: 0.64294*height), control2: CGPoint(x: 0.71533*width, y: 0.6641*height))
        path.addLine(to: CGPoint(x: 0.53378*width, y: 0.76354*height))
        path.addCurve(to: CGPoint(x: 0.46622*width, y: 0.76354*height), control1: CGPoint(x: 0.51288*width, y: 0.775*height), control2: CGPoint(x: 0.48712*width, y: 0.775*height))
        path.addLine(to: CGPoint(x: 0.30557*width, y: 0.67556*height))
        path.addCurve(to: CGPoint(x: 0.27179*width, y: 0.62004*height), control1: CGPoint(x: 0.28467*width, y: 0.6641*height), control2: CGPoint(x: 0.27179*width, y: 0.64294*height))
        path.addLine(to: CGPoint(x: 0.27179*width, y: 0.44406*height))
        path.addCurve(to: CGPoint(x: 0.30557*width, y: 0.38855*height), control1: CGPoint(x: 0.27179*width, y: 0.42116*height), control2: CGPoint(x: 0.28467*width, y: 0.4*height))
        path.addLine(to: CGPoint(x: 0.46622*width, y: 0.30056*height))
        path.closeSubpath()
        return path
    }
}
