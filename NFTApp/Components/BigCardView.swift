//
//  BigCardView.swift
//  NFTApp
//
//  Created by Berkay Disli on 14.10.2022.
//

import SwiftUI

struct BigCardView: View {
    let image: String
    let title: String
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 280, height: 186)
            
            Text(title)
                .font(.system(size: 22))
                .bold()
                .frame(maxWidth: .infinity)
                .padding(.vertical, 8)
                .background {
                    Rectangle()
                        .fill(.ultraThinMaterial)
                        .blur(radius: 15)
                        .frame(width: 330, height: 120)
                        .offset(y: 20)
                }
                
        }
        .cornerRadius(30)
    }
}

struct BigCardView_Previews: PreviewProvider {
    static var previews: some View {
        BigCardView(image: "big2", title: "Art")
    }
}
