//
//  TabManager.swift
//  NFTApp
//
//  Created by Berkay Disli on 14.10.2022.
//

import SwiftUI

struct TabManager: View {
    @EnvironmentObject var navVM: NavigationViewModel
    
    var body: some View {
        ZStack(alignment: .bottom) {
            // MARK: Tabs to show
            switch navVM.selectedTab {
            case .home:
                Home()
                    .transition(AnyTransition.opacity.animation(.easeInOut))
            case .popular:
                Popular()
                    .transition(AnyTransition.opacity.animation(.easeInOut))
            case .search:
                Text("Search")
                    .transition(AnyTransition.opacity.animation(.easeInOut))
            case .profile:
                Text("Profile")
                    .transition(AnyTransition.opacity.animation(.easeInOut))
            case .blank:
                EmptyView()
            }
            
            
            // MARK: TabManager
            tabManager
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TabManager_Previews: PreviewProvider {
    static var previews: some View {
        TabManager()
            .environmentObject(NavigationViewModel())
            .preferredColorScheme(.dark)
    }
}

extension TabManager {
    var tabManager: some View {
        ZStack {
            HStack {
                ForEach(NavigationTabs.allCases, id:\.self) { tab in
                    Spacer()
                    VStack {
                        Image(systemName: navVM.selectedTab == tab ? "\(tab.icon).fill" : tab.icon)
                            .font(.title)
                    }
                    .frame(width: 44, height: 44)
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            navVM.setNavigationTab(tab: tab)
                        }
                    }
                    Spacer()
                }
            }
            .padding(.bottom, 40)
            .frame(height: 120)
            .background(.ultraThinMaterial)
            .cornerRadius(50)
            .overlay(
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(.white.opacity(0.4), lineWidth: 0.4)
                )
            .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: -5)
            .shadow(color: Color("lightPurple").opacity(0.15), radius: 30, x: 0, y: -20)
            .offset(y: 45)
            
            HexagonShape()
                .fill(.white)
                .frame(width: 160, height: 160)
                .overlay {
                    Image(systemName: "plus")
                        .foregroundColor(.black)
                        .font(.largeTitle)
                        .offset(y: 4)
                }
                .shadow(color: .black.opacity(0.15), radius: 5, x: 0, y: 5)
                .shadow(color: .white.opacity(0.4), radius: 30, x: 0, y: 0)
                .offset(y: -20)
            
        }
    }
}
