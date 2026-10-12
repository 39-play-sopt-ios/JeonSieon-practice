//
//  PostModel.swift
//  Practice1
//
//  Created by 전시언 on 10/10/26.
//
import SwiftUI
import Foundation

struct PostModel: Identifiable{
    let id = UUID()
    let username: String
    let location: String
    let postImageName: String
    let likesText: String
    let caption: String
    let timeText: String
    var isLiked = false
}

let examplePosts: [PostModel] = [
    PostModel(username: "이상엽", location: "서울 대한민국", postImageName: "Rectangle", likesText: "모아요님 외 7,777명이 좋아합니다", caption: "벌써 2차 세미나라니 정말 즐거워요!", timeText: "1시간 전"),
    PostModel(username: "모이요", location: "아요의 숲", postImageName: "Rectangle", likesText: "모아요님 외 7777명이 좋아합니다", caption: "같은 카드에 다른 데이터를 전달해보기", timeText: "2시간 전"),
    PostModel(username: "모아요", location: "아요의 숲", postImageName: "Rectangle", likesText: "모아요님 외 1명이 좋앟바니다.", caption: "같은 카드에 다른 데이터를 전달해보기", timeText: "2시간 전")
]
