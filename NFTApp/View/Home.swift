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
                    ScrollView(showsIndicators: false) {
                        LazyVStack {
                            // MARK: Big Cards
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack(spacing: 12) {
                                    ForEach(BigCards.allCases, id: \.self) { card in
                                        BigCardView(image: card.image, title: card.title)                            }
                                }
                                .padding(.horizontal)
                            }
                            .frame(height: 190)
                            .padding(.vertical)
                            
                            // MARK: Trending
                            VStack(spacing: 12) {
                                Text("Trending Collections")
                                    .font(.system(size: 20))
                                    .fontWeight(.semibold)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading)
                                
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHStack(spacing: 12) {
                                        ForEach(TrendingCollections.allCases, id:\.self) { card in
                                            MidCardView(image: card.image, title: card.title, likes: card.likes)
                                        }
                                    }
                                    .padding(.horizontal)
                                }
                                .frame(height: 225)
                            }
                            .padding(.bottom)
                            
                            // MARK: Trending
                            VStack(spacing: 12) {
                                Text("Top Seller")
                                    .font(.system(size: 20))
                                    .fontWeight(.semibold)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading)
                                
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHStack(spacing: 12) {
                                        ForEach(TopSellers.allCases, id:\.self) { card in
                                            MidCardView(image: card.image, title: card.title, likes: card.likes)
                                        }
                                    }
                                    .padding(.horizontal)
                                }
                                .frame(height: 225)
                            }
                            .padding(.bottom)

                            
                            
                            Spacer()
                        }
                    }
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
