//
//  NavigationViewModel.swift
//  NFTApp
//
//  Created by Berkay Disli on 15.10.2022.
//

import Foundation

class NavigationViewModel: ObservableObject {
    @Published var selectedTab: NavigationTabs  = .home
    
    init() {
        
    }
    
    func setNavigationTab(tab: NavigationTabs) {
        selectedTab = tab
    }
}
