//
//  InstagramFeedView.swift
//  Practice1
//
//  Created by 전시언 on 10/10/26.
//

import SwiftUI

struct InstagramFeedView: View {
    @State private var firstPostIsLiked = false
    @State private var secondPostIsLiked = false
    
    var body: some View {
        ScrollView{
            VStack(alignment: .center, spacing: 0){
                Image("Group 3")
                    .padding(.bottom, 30)
                
                PostCardView(profileImage: Image("Oval"), username: "이상엽", location: "서울 대한민국", postImage: Image("Rectangle"), likesText: "모아요님 외 7,777명이 좋아합니다", caption: "벌써 2차 세미나라니 정말 즐거워요!", timeText: "1시간 전", isLiked: $firstPostIsLiked)
                
                PostCardView(profileImage: Image("Oval"), username: "이상엽", location: "서울 대한민국", postImage: Image("Rectangle"), likesText: "모아요님 외 7,777명이 좋아합니다", caption: "드가자 모아요 아자아자", timeText: "2시간 전", isLiked: $secondPostIsLiked)
                
                Spacer()
            }
        }
    }
}

#Preview {
    InstagramFeedView()
}
