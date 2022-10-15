//
//  Popular.swift
//  NFTApp
//
//  Created by Berkay Disli on 15.10.2022.
//

import SwiftUI

struct Popular: View {
    @State private var selectedStatsMode: StatsMode = .ranking
    @Namespace var statsmode
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("bg").ignoresSafeArea()
                Circle()
                    .fill(Color("ellipse1"))
                    .frame(width: 215, height: 215)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                    .blur(radius: 100)
                
                VStack(spacing: 0) {
                    // MARK: Stats Mode
                    statsMode
                    
                    ZStack(alignment: .top) {
                        ScrollView(showsIndicators: false) {
                            LazyVStack(spacing: 32) {
                                ForEach(SmallPopularItems.allCases, id:\.self) { item in
                                    HStack(spacing: 15) {
                                        if let order = (Int(item.rawValue.description) ?? 0) + 1 {
                                            Text("\(order)")
                                                .font(.system(size: 15))
                                                .foregroundColor(.gray)
                                            
                                            
                                            Image("small\(order)")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 44, height: 44)
                                            
                                            
                                            VStack(alignment: .leading, spacing: 8) {
                                                Text(item.title)
                                                    .font(.system(size: 17))
                                                    .fontWeight(.semibold)
                                                
                                                Text("Show Info")
                                                    .foregroundColor(.gray)
                                            }
                                            
                                            Spacer()
                                            
                                            VStack(alignment: .trailing, spacing: 8) {
                                                HStack {
                                                    Image("eth")
                                                        .resizable()
                                                        .scaledToFit()
                                                        .frame(height: 15)
                                                        .brightness(0.3)
                                                    Text(item.price)
                                                        .font(.system(size: 15))
                                                }
                                                
                                                Text("\(item.ratio.formatted())%")
                                                    .foregroundColor(.green)
                                            }
                                        }
                                    }
                                    .font(.system(size: 13))
                                }
                            }
                            .padding(.horizontal, 16)
                            .padding(.vertical, 20)
                            .background(.white.opacity(0.07))
                            .cornerRadius(20)
                            .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(.white.opacity(0.5), lineWidth: 0.4)
                                )
                            .shadow(color: .black.opacity(0.25), radius: 4, x: 0, y: 0)
                            .padding()
                            .padding(.top, 90)
                            .padding(.bottom, 120)
                        }
                        
                        // MARK: Stats Filter
                        statsFilter
                            .padding(.top, 24)
                    }
                    
                    Spacer()
                }
                .background {
                    Circle()
                        .fill(Color("ellipse2"))
                        .frame(width: 215, height: 215)
                        .blur(radius: 80)
                }
            }
            .edgesIgnoringSafeArea(.bottom)
            .preferredColorScheme(.dark)
            .navigationTitle("Popular")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "bell")
                }
            }
        }
    }
}

struct Popular_Previews: PreviewProvider {
    static var previews: some View {
        Popular()
            .environmentObject(NavigationViewModel())
    }
}

enum StatsMode: String, CaseIterable {
    case ranking, activity
    
    var image: String {
        switch self {
        case .ranking:
            return "chart.bar.xaxis"
        case .activity:
            return "chart.line.uptrend.xyaxis"
        }
    }
}

enum StatsFilter: String, CaseIterable {
    case categories, chains
    
    var image: String {
        switch self {
        case .categories:
            return "rectangle.grid.2x2"
        case .chains:
            return "paperclip"
        }
    }
}

extension Popular {
    var statsMode: some View {
        VStack(spacing: 0) {
            HStack(spacing: 17) {
                ForEach(StatsMode.allCases, id: \.self) { mode in
                    VStack {
                        HStack {
                            Image(systemName: mode.image)
                            Text(mode.rawValue.capitalized)
                        }
                        .foregroundColor(selectedStatsMode == mode ? .white:.gray)
                        .onTapGesture {
                            // Start with stiffness: 170 and damping: 15...
                            withAnimation(.interpolatingSpring(stiffness: 170, damping: 15)) {
                                selectedStatsMode = mode
                            }
                        }
                        
                        if selectedStatsMode == mode {
                            Capsule()
                                .fill(Color("lightPurple"))
                                .matchedGeometryEffect(id: "capsule", in: statsmode)
                                .frame(width: 118, height: 4)
                        } else {
                            Capsule()
                                .fill(.clear)
                                .frame(width: 118, height: 4)
                        }
                    }
                    .padding(.bottom, -20)
                }
            }
            .font(.system(size: 17))
            .fontWeight(.semibold)
            .frame(height: 58)
            .padding(.top)
            
            Divider()
                .background(Color("lightPurple").opacity(0.5))
                //.padding(.top, -10.5)
        }
    }
    
    var statsFilter: some View {
        HStack(spacing: 28) {
            ForEach(StatsFilter.allCases, id:\.self) { filter in
                HStack(spacing: 8) {
                    Image(systemName: filter.image)
                    Text("\(filter.rawValue.capitalized)")
                        .foregroundColor(.white)
                    Image(systemName: "chevron.down")
                }
                .font(.system(size: 15))
                .foregroundColor(.gray)
                .frame(width: 164, height: 44)
                .background(content: {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(.ultraThinMaterial.opacity(0.93))
                        .colorMultiply(.purple)
                })
                .cornerRadius(30)
                .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(.white.opacity(0.5), lineWidth: 0.4)
                    )
                .shadow(color: .black.opacity(0.25), radius: 4, x: 0, y: 4)
            }
        }
    }
}
