//
//  LikeButtonView.swift
//  Practice1
//
//  Created by 전시언 on 10/10/26.
//

import SwiftUI

struct LikeButtonView: View {
    @Binding var isLiked: Bool
    
    var body: some View {
        
        Button{
            isLiked.toggle()
        }label: {
            Image(isLiked ? "Like" : "LikeFill")
        }
    }
}
