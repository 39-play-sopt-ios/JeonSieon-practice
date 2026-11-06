//
//  PostSignUpView.swift
//  Practice1
//
//  Created by sieon on 10/31/26.
//

import SwiftUI

struct PostSignUpView: View {
    @State private var part: String = ""
    @State private var name: String = ""
    @State private var authorizationCode = ""
    @State private var isLoading = false
    @State private var errorMessage = ""
    
    var body: some View {
        @State var partText: String = ""
        @State var nameText: String = ""
        
        NavigationStack {
            VStack(spacing: 20) {
                Group {
                    TextField("web / iOS / android", text: $part)
                    
                    TextField("이름을 입력해주세요", text: $name)
                }
                .padding()
                .frame(width: 327, height: 54)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .overlay {
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(.gray300, lineWidth: 0.5)
                }
                
                Button {
                    Task {
                        await signupButtonDidTap()
                    }
                } label: {
                    Text(isLoading ? "발급 중..." : "코드 발급")
                        .font(.subhead3)
                        .foregroundStyle(.white)
                }
                .frame(width: 327, height: 54)
                .background(.black)
                .cornerRadius(12)
                .disabled(isLoading)
                
                NavigationLink{
                    PostView(authorizationCode: $authorizationCode, author: name)
                } label: {
                    Text("게시글 이동")
                        .font(.subhead3)
                        .foregroundStyle(.white)
                }
                .frame(width: 327, height: 54)
                .background(.black)
                .cornerRadius(12)
                
                Spacer()
                
                if !authorizationCode.isEmpty {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("발급받은 인증 코드")
                        Text(authorizationCode)
                            .textSelection(.enabled)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 24)
                }
                
                if !errorMessage.isEmpty {
                    Text(errorMessage)
                        .foregroundStyle(.red)
                        .padding(.bottom, 24)
                }
            }
            .padding(.horizontal, 24)
            .padding(.top, 88)
            .background(.white)
        }
    }
    
    private func signupButtonDidTap() async {
        guard !isLoading else { return }
        
        isLoading = true
        authorizationCode = ""
        errorMessage = ""
        defer { isLoading = false }
        
        do {
            let response = try await SignupService.shared.postSignup(part: part)
            try Task.checkCancellation()
            
            guard let code = response.data?.authorizationCode else {
                throw NetworkError.responseError
            }
            authorizationCode = code
        } catch is CancellationError {
            
        } catch {
            errorMessage = error.localizedDescription
        }
    }
}

#Preview {
    PostSignUpView()
}
