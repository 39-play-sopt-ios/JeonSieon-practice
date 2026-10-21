//
//  MessageRowView.swift
//  Practice1
//
//  Created by 전시언 on 10/17/26.
//

import SwiftUI

struct MessageRowView: View {
    let id = UUID()
    let userName : String
    let postImageName: String
    let caption: String
    let timeText: String
    
    var body: some View {
        HStack{
            Image(postImageName)
                .resizable()
                .scaledToFill()
                .frame(width: 56, height: 56, alignment: .leading)
                .clipShape(Circle())
                .padding(.leading, 16)
            VStack(alignment: .leading, spacing: 0){
                Text(userName)
                HStack(spacing: 0){
                    Text(caption)
                        .foregroundStyle(.gray300)
                        
                    
                    Spacer()
                    
                    Text(timeText)
                        .padding(.trailing, 32)
                        .foregroundStyle(.gray300)
                    
                    
                    Image("Camera")
                        .padding(.bottom, 16)
                        .padding(.trailing, 16)
                    
                }
            }
        }
        .frame(width: 375, height: 72)
        
    }
}

#Preview {
    MessageRowView(userName: "juju", postImageName: "Dog", caption: "안녕하세용 주주예용", timeText: "지금")
}
