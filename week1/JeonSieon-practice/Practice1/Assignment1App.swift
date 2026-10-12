//
//  Assignment1App.swift
//  Assignment1
//
//  Created by 전시언 on 10/4/26.
//

import SwiftUI

@main
struct Assignment1App: App {
    @State private var isLiked = false
    
    var body: some Scene {
        WindowGroup {
            PostCardView(
                profileView: Image("Oval"),
                username: "이상엽",
                location: "서울 대한민국",
                postImage: Image("Rectangle"),
                likesText: "모아요님 외 7777명이 좋아합니다",
                caption: "벌써 2차 세미나라니 정말 즐거워요!",
                timeText: "1시간 전",
                isLiked: $isLiked
            )
        }
    }
}
