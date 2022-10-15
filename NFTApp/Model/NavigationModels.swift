//
//  NavigationModels.swift
//  NFTApp
//
//  Created by Berkay Disli on 14.10.2022.
//

import Foundation

enum NavigationTabs: CaseIterable {
    case home, popular, blank, search, profile
    
    var icon: String {
        switch self {
        case .home:
            return "house"
        case .popular:
            return "flame"
        case .blank:
            return ""
        case .search:
            return "magnifyingglass.circle"
        case .profile:
            return "person"
        }
    }
}
