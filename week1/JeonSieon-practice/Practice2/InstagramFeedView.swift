//
//  InstagramFeedView.swift
//  Practice1
//
//  Created by 전시언 on 10/10/26.
//

import SwiftUI

struct InstagramFeedView: View {
    @State private var posts: [PostModel] = examplePosts
    
    var body: some View {
        ScrollView{
            VStack(alignment: .center, spacing: 0){
                Image("Group 3")
                    .padding(.bottom, 30)
                
                ForEach($posts) { $post in
                    PostCardView(profileImage: Image("Oval"), username: post.username, location: post.location, postImage: Image(post.postImageName), likesText: post.likesText, caption: post.caption, timeText: post.timeText, isLiked: $post.isLiked)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    InstagramFeedView()
}
