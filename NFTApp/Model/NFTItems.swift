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

enum TrendingCollections: String, CaseIterable {
    case threeD, abstract, portrait, metaverse
    
    var title: String {
        switch self {
        case .threeD:
            return "3D Art"
        case .abstract:
            return "Abstract Art"
        case .portrait:
            return "Portrait Art"
        case .metaverse:
            return "Metaverse Art"
        }
    }
    
    var image: String {
        switch self {
        case .threeD:
            return "trend1"
        case .abstract:
            return "trend2"
        case .portrait:
            return "trend3"
        case .metaverse:
            return "trend4"
        }
    }
    
    var likes: Int {
        switch self {
        case .threeD:
            return 222
        case .abstract:
            return 186
        case .portrait:
            return 163
        case .metaverse:
            return 157
        }
    }
}

enum TopSellers: CaseIterable {
    case wave, pink, wave2, abstract, music, ball, ring, bear
    
    var title: String {
        switch self {
        case .wave:
            return "Wave"
        case .pink:
            return "Abstract Pink"
        case .wave2:
            return "Wave"
        case .abstract:
            return "Abstract23"
        case .music:
            return "Music"
        case .ball:
            return "Ball"
        case .ring:
            return "Ring"
        case .bear:
            return "Bear"
        }
    }
    
    var image: String {
        switch self {
        case .wave:
            return "topsell1"
        case .pink:
            return "topsell2"
        case .wave2:
            return "topsell3"
        case .abstract:
            return "topsell4"
        case .music:
            return "topsell5"
        case .ball:
            return "topsell6"
        case .ring:
            return "topsell7"
        case .bear:
            return "topsell8"
        }
    }
    
    var fullId: String {
        switch self {
        case .wave:
            return "wav2 #5672"
        case .pink:
            return "abstract #2538"
        case .wave2:
            return "wavepi #5267"
        case .abstract:
            return "abstract #2038"
        case .music:
            return "mali #7890"
        case .ball:
            return "baalli #4890"
        case .ring:
            return "Ring #7288"
        case .bear:
            return "Beer #1238"
        }
    }
    
    var price: String {
        switch self {
        case .wave:
            return "0.018"
        case .pink:
            return "0.906"
        case .wave2:
            return "0.26"
        case .abstract:
            return "0.246"
        case .music:
            return "0.45"
        case .ball:
            return "0.03"
        case .ring:
            return "0.12"
        case .bear:
            return "0.29"
        }
    }
    
    var likes: Int {
        switch self {
        case .wave:
            return 987
        case .pink:
            return 834
        case .wave2:
            return 820
        case .abstract:
            return 777
        case .music:
            return 759
        case .ball:
            return 613
        case .ring:
            return 549
        case .bear:
            return 508
        }
    }
}
