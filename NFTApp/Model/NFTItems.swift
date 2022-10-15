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
    case wave, pink, wave2, abstract
    
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
        }
    }
}




enum FreshItems: String, CaseIterable {
    case music, ball, ring, bear
    
    var image: String {
        switch self {
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

enum SmallPopularItems: Int, CaseIterable {
    case azumi, hape, cryoto, apeClub, bat
    case mutant, meta, mountain, mutantApe, sandbox
    
    var title: String {
        switch self {
        case .azumi:
            return "Azumi"
        case .hape:
            return "Hape Prime"
        case .cryoto:
            return "Cryoto"
        case .apeClub:
            return "Ape Club"
        case .bat:
            return "Bat"
        case .mutant:
            return "Mutant"
        case .meta:
            return "Metaverse"
        case .mountain:
            return "Mountain"
        case .mutantApe:
            return "MutantApe"
        case .sandbox:
            return "Sandbox"
        }
    }
    /*
    var image: String {
        switch self {
        case .azumi:
            return "1"
        case .hape:
            <#code#>
        case .cryoto:
            <#code#>
        case .apeClub:
            <#code#>
        case .bat:
            <#code#>
        case .mutant:
            <#code#>
        case .meta:
            <#code#>
        case .mountain:
            <#code#>
        case .mutantApe:
            <#code#>
        case .sandbox:
            <#code#>
        }
    }
     */
    
    var price: String {
        switch self {
        case .azumi:
            return "200055.02"
        case .hape:
            return "180055.45"
        case .cryoto:
            return "90055.62"
        case .apeClub:
            return "88055.12"
        case .bat:
            return "10055.06"
        case .mutant:
            return "9095.27"
        case .meta:
            return "10055.02"
        case .mountain:
            return "8055.73"
        case .mutantApe:
            return "5055.73"
        case .sandbox:
            return "1055.02"
        }
    }
    
    var ratio: Float {
        switch self {
        case .azumi:
            return 3.99
        case .hape:
            return 7.86
        case .cryoto:
            return 5.62
        case .apeClub:
            return 12.78
        case .bat:
            return 1.22
        case .mutant:
            return 2.31
        case .meta:
            return 10.5
        case .mountain:
            return 24.1
        case .mutantApe:
            return 54.9
        case .sandbox:
            return 30.57
        }
    }
    
}
