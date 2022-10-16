//
//  Blur.swift
//  NFTApp
//
//  Created by Berkay Disli on 16.10.2022.
//

import SwiftUI

class UIBackdropView: UIView {
    override class var layerClass: AnyClass {
        NSClassFromString("CABackdropLayer") ?? CALayer.self
    }
}

struct Backdrop: UIViewRepresentable {
    func makeUIView(context: Context) -> UIBackdropView {
        UIBackdropView()
    }
    
    func updateUIView(_ uiView: UIBackdropView, context: Context) {}
}

extension View {
    func backgroundBlur(radius: CGFloat) -> some View {
        self
            .background(
            Blur(radius: radius)
            )
    }
}

struct Blur: View {
    let radius: CGFloat
    var body: some View {
        Backdrop()
            .blur(radius: radius, opaque: true)
    }
}

struct Blur_Previews: PreviewProvider {
    static var previews: some View {
        Blur(radius: 3)
    }
}
