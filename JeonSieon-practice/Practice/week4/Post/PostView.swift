//
//  PostView.swift
//  Practice
//
//  Created by sieon on 11/3/26.
//

import SwiftUI

struct PostView: View {
    @State var showSheet = false
    @State private var viewModel = PostViewModel()
    @Binding var authorizationCode: String
    @State private var search = ""
    let author: String
    
    var body: some View {
        @Bindable var viewModel = viewModel
        
        VStack {
            SearchTextField(placeholder: "검색어를 입력하세요", text: $search, icon: .search)
                .padding(.bottom, 12)
            
            List {
                ForEach(viewModel.examplePosts) { post in
                    PostCardRowView(
                        title: post.title,
                        content: post.content,
                        author: post.author,
                        createAt: post.createdAt
                    )
                    .listRowSeparator(.hidden)
                    .listRowInsets(
                        EdgeInsets(
                            top: 0,
                            leading: 16,
                            bottom: 12,
                            trailing: 16
                        )
                    )
                    .contentShape(Rectangle())     
                    .onLongPressGesture(minimumDuration: 0.5) {
                        if post.author == author {
                            viewModel.requestDelete(post)
                        }
                    }
                }
            }
            .listStyle(.plain)
            .scrollContentBackground(.hidden)
            .task {
                await viewModel.loadPosts()
            }
        }
        .navigationBarBackButtonHidden()
        .overlay(
            VStack{
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button{
                        showSheet = true
                    }
                    label: {
                        Image(.plus)
                            .background(
                                Circle()
                                    .fill(.red)
                                    .frame(width: 60, height: 60)
                            )
                            .padding(.bottom, 28)
                            .padding(.trailing, 32)
                    }
                    .sheet(isPresented: $showSheet) {
                        SheetView(viewModel: viewModel, authorizationCode: authorizationCode, author: author, showSheet: $showSheet)
                            .presentationDragIndicator(.visible)
                            .presentationBackground(.white)
                            .presentationDetents([.fraction(0.4)])
                    }
                }
            }
        )
        .confirmAlert(item: $viewModel.deleteTarget,
                      message: "게시글을 삭제할까요?",
                      confirmTitle: "삭제"
        ) { post in
            Task {
                _ = await viewModel.deletePost(
                    postId: post.id,
                    authorizationCode: authorizationCode
                )
            }
        }
    }
}
    
    #Preview {
        PostView(authorizationCode: .constant("dsa"), author: "asd")
    }
