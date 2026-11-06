//
//  PostCardRowView.swift
//  Practice
//
//  Created by sieon on 11/3/26.
//

import SwiftUI

struct PostCardRowView: View {
    let title: String
    let content: String
    let author: String
    let createAt: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Group{
                    Text(author)
                        .padding(.trailing,4)
                    Text("|")
                        .padding(.trailing, 4)
                    Text(createAt)
                }
                .font(.body1)
                .foregroundStyle(.gray3)
            }
            .padding(.bottom, 8)
            
            Group {
                Text(title)
                    .padding(.bottom, 4)
                    .font(.body3)
                Text(content)
                    .font(.body4)
            }
            .foregroundStyle(.gray5)
            
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(.gray1)
        )
        
    }
}

#Preview {
    PostCardRowView(title: "Sda", content: "sda", author: "Asda", createAt: "asd")
}
