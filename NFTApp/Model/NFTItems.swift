//
//  NFTItems.swift
//  NFTApp
//
//  Created by Berkay Disli on 14.10.2022.
//

import Foundation

enum BigCards: String, CaseIterable {
    case music, art, virtual
    
    var title: String {
        switch self {
        case .music:
            return "Music"
        case .art:
            return "Art"
        case .virtual:
            return "Virtual Worlds"
        }
    }
    
    var image: String {
        switch self {
        case .music:
            return "big1"
        case .art:
            return "big2"
        case .virtual:
            return "big3"
        }
    }
}
