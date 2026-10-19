//
//  PostCardView.swift
//  Practice1
//
//  Created by 전시언 on 10/10/26.
//

import SwiftUI

struct PostCardView: View {
    let profileImage: Image
    let username: String
    let location: String
    let postImage: Image
    let likesText: String
    let caption: String
    let timeText: String
    var isLiked: Bool
    var onLikedTapped: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            profileHeader
            postImageSection
            actionIcons
            postInformation
        }
        .background(.white)
        .foregroundStyle(.black)
    }
    
    private var profileHeader: some View {
        HStack(spacing: 10){
            profileImage
                .resizable()
                .scaledToFill()
                .frame(width: 36, height: 36)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 2) {
                Text(username)
                    .font(.system(size: 14, weight: .semibold))
                
                Text(location)
                    .font(.system(size: 12))
            }
            
            Spacer()
            
            Image("More Icon")
        }
        .padding(.horizontal, 12)
        .padding(.vertical)
    }
    
    private var postImageSection: some View{
        Color.clear
            .frame(maxWidth: .infinity)
            .aspectRatio(1, contentMode: .fit)
            .overlay {
                postImage
                    .resizable()
                    .scaledToFill()
            }
            .clipped()
            .overlay(alignment: .topTrailing){
                Text("1/3")
                    .font(.system(size: 12))
                    .foregroundStyle(.white)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 6)
                    .background(.black.opacity(0.7), in: Capsule())
                    .padding(16)
            }
    }
    
    private var actionIcons: some View{
        HStack(spacing: 18){
            Button{
                onLikedTapped()
            } label: {
                Image(isLiked ? "LikeFill" : "Like")
            }
            .buttonStyle(.plain)
            
            Image("Comment")
            Image("Messanger")
            
            Spacer()
            
            Image("Save")
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
    }
    
    private var postInformation: some View{
        VStack(alignment: .leading, spacing: 8){
            HStack(spacing: 6){
                profileImage
                    .resizable()
                    .scaledToFill()
                    .frame(width: 20, height: 20)
                    .clipShape(Circle())
                
                Text(likesText)
                    .font(.system(size: 14))
            }
            
            Text(
                "\(Text(username).fontWeight(.semibold)) \(caption)"
            )
            .font(.system(size: 14))
            .fixedSize(horizontal: false, vertical: true)
            
            Text(timeText)
                .font(.system(size: 12))
                .foregroundStyle((.secondary))
        }
        .padding(.horizontal, 16)
        .padding(.bottom, 12)
    }
}

