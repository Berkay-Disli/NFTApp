//
//  Home.swift
//  NFTApp
//
//  Created by Berkay Disli on 14.10.2022.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("bg").ignoresSafeArea()
                Circle()
                    .fill(Color("ellipse1"))
                    .frame(width: 215, height: 215)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                    .blur(radius: 100)
                
                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(BigCards.allCases, id: \.self) { card in
                                ZStack(alignment: .bottom) {
                                    Image(card.image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 280, height: 186)
                                    
                                    Text(card.title)
                                        .font(.system(size: 22))
                                        .bold()
                                        .frame(maxWidth: .infinity)
                                        .padding(.vertical, 8)
                                        .background {
                                            Rectangle()
                                                .fill(.ultraThinMaterial)
                                                .blur(radius: 15)
                                                .frame(width: 300, height: 100)
                                                .offset(y: 20)
                                        }
                                        
                                }
                                .cornerRadius(30)
                            }
                        }
                        .padding(.horizontal)
                    }
                    .frame(height: 190)
                    .padding(.top)

                    
                    
                    Spacer()
                }
                .background {
                    Circle()
                        .fill(Color("ellipse2"))
                        .frame(width: 215, height: 215)
                        .blur(radius: 80)
                }
            }
            .preferredColorScheme(.dark)
            .navigationTitle("NFT Market")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
