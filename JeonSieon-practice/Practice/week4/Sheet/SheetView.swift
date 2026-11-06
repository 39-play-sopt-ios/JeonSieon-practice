//
//  SheetView.swift
//  Practice
//
//  Created by sieon on 11/3/26.
//

import SwiftUI

struct SheetView: View {
    let viewModel: PostViewModel
    let authorizationCode: String
    let author: String
    @Binding var showSheet: Bool
    
    @State private var title = ""
    @State private var content = ""
        
    private var isSubmit: Bool {
        !title.isEmpty && !content.isEmpty
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Group {
                Text("제목")
                SearchTextField(placeholder: "제목을 입력하세요.", text: $title)
                
                Text("본문")
                SearchTextField(placeholder: "본문을 입력하세요.", text: $content)
            }
            .padding(.bottom, 12)
            .padding(.leading, 16)
            Button{
                Task {
                    let success = await viewModel.uploadPost(
                        title: title,
                        content: content,
                        author: author,
                        authorizationCode: authorizationCode
                    )
                    
                    if success { showSheet = false }
                }
            } label: {
                Text("완료")
                    .foregroundStyle(isSubmit ? .gray1 : .gray3)
                    .frame(width: 329, height: 49)
                    .background(RoundedRectangle(cornerRadius: 16)
                        .fill(isSubmit ? .black : .gray1)
                    )
                    
            }
            .disabled(!isSubmit)
            .frame(maxWidth: .infinity, alignment: .center)
        }
    }
}

