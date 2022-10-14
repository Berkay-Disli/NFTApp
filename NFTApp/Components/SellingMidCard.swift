//
//  SellingMidCard.swift
//  NFTApp
//
//  Created by Berkay Disli on 14.10.2022.
//

import SwiftUI

struct SellingMidCard: View {
    let image: String
    let title: String
    let likes: Int
    let fullId: String
    let price: String
    
    var body: some View {
        VStack(spacing: 10) {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 155)
                .cornerRadius(30)
                        
            VStack {
                VStack(alignment: .leading) {
                    Text(title)
                        .fontWeight(.semibold)
                    
                    Text(fullId)
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                }
                .frame(height: 36)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack {
                    HStack {
                        Image("eth")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 15)
                            .brightness(0.3)
                        Text("\(price)")
                            .foregroundColor(.white)
                    }
                    Spacer()
                    HStack {
                        Image(systemName: "heart")
                            .foregroundColor(.gray)
                        Text("\(likes)")
                            .foregroundColor(.gray)
                    }
                }
            }
            .font(.system(size: 13))
            .padding([.horizontal, .bottom])
        }
        .frame(width: 175, height: 262)
        .background(.white.opacity(0.098))
        .cornerRadius(30)
        .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(.white.opacity(0.5), lineWidth: 0.4)
            )
        .shadow(color: .black.opacity(0.25), radius: 4, x: 0, y: 4)
    }
}

struct SellingMidCard_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
