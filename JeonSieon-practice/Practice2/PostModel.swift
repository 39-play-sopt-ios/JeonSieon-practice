//
//  PostModel.swift
//  Practice1
//
//  Created by 전시언 on 10/20/26.
//

import Foundation

struct PostModel: Identifiable {
    let id = UUID()
    let username: String
    let location: String
    let postImageName: String
    let likesText: String
    let caption: String
    let timeText: String
    var isLiked: Bool = false
}
