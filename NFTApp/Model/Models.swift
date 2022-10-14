//
//  Models.swift
//  NFTApp
//
//  Created by Berkay Disli on 14.10.2022.
//

import Foundation

struct BigCard: Identifiable {
    let id = UUID().uuidString
    let image: String
    let title: String
}

struct SmallCard: Identifiable {
    let id = UUID().uuidString
    let image: String
    let title: String
    let likeCount: Int
}

