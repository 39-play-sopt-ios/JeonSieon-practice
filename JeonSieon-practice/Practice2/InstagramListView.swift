//
//  InstagramListView.swift
//  Practice1
//
//  Created by 전시언 on 10/17/26.
//

import SwiftUI

struct InstagramListView: View {
    @State private var viewModel = InstagramListViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.listDm){post in
                MessageRowView(userName: post.userName, postImageName: post.postImageName, caption: post.caption, timeText: post.timeText)
                    .frame(width: 375, height: 72)
                
            }
        }
        .listStyle(.plain)
        .scrollContentBackground(.hidden)
        .background(.white)
    }
}

#Preview {
    InstagramListView()
}
