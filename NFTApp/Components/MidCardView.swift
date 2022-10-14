//
//  MidCardView.swift
//  NFTApp
//
//  Created by Berkay Disli on 14.10.2022.
//

import SwiftUI

struct MidCardView: View {
    let image: String
    let title: String
    let likes: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 155)
                .cornerRadius(30)
                        
            HStack {
                Text(title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                HStack {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                    Text("\(likes)")
                        .foregroundColor(.gray)
                }
            }
            .font(.system(size: 13))
            .padding([.horizontal, .bottom])
        }
        .frame(width: 175, height: 216)
        .background(.white.opacity(0.098))
        .cornerRadius(30)
        .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(.white.opacity(0.5), lineWidth: 0.4)
            )
        .shadow(color: .black.opacity(0.25), radius: 4, x: 0, y: 4)
    }
}

struct MidCardView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
