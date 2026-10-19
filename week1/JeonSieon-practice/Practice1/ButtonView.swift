//
//  ButtonView.swift
//  Assignment1
//
//  Created by 전시언 on 10/5/26.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack(spacing: 20) {
            Button{
                print("버튼을 눌렀어요!")
            }label: {
                Label("인사하기", systemImage: "hand.wave.fill")
            }
            .buttonStyle(.borderedProminent)
            
            Button(action: signIn){
                Text("Sign In")
            }
            .buttonStyle(.bordered)
            
            Button {
                print("프로필 열기!")
            }label: {
                HStack(spacing: 8){
                    Image(systemName: "person.fill")
                    Text("프로필 보기")
                }
            }
            
            Button("로그인"){
                print("로그인 완료!")
            }
        }
    }
    private func signIn(){
        print("회원가입 완료!")
    }
}

#Preview {
    ButtonView()
}
