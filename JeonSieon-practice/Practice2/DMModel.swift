//
//  DMModel.swift
//  Practice1
//
//  Created by 전시언 on 10/17/26.
//

import Foundation

struct DMModel: Identifiable{
    let id = UUID()
    let userName: String
    let postImageName: String
    let caption: String
    let timeText: String
}
