//
//  InstagramProfileView.swift
//  Practice1
//
//  Created by 전시언 on 10/7/26.
//

import SwiftUI

struct InstagramProfileView: View {
    @State private var showAlert: Bool = false

    var body: some View {
        VStack(alignment: .center, spacing: 0){
            Image("Group 3")
                .padding(.top,193)
            
            Image("Oval")
                .padding(.top, 65)
            
            Text("moamoa")
                .font(.system(size: 14, weight: .semibold))
                .padding(.top, 13)
            
            Button{
                showAlert = true
            }label: {
                Text("로그인하기")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 44)
                    .background(.blue)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 5)
                    )
            }
            .padding(.horizontal, 34)
            .padding(.top, 12)
            
            Button("계정 전환"){}
                .font(.system(size: 14, weight: .semibold))
                .foregroundStyle(.blue)
                .padding(.top, 30)
            
            Spacer()
            
            HStack(alignment: .center, spacing: 11){
                Text("계정이 없으신가요?")
                    .font(.system(size: 12,weight: .regular))
                    .foregroundStyle(.black.opacity(0.4))
                
                Button{
                    
                } label:{
                    Text("회원가입하기. ")
                        .font(.system(size: 12,weight: .semibold))
                        .foregroundStyle(.black)
                }
            }
            .padding(.bottom, 18)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .alert("아직 앱 출시 전입니다!", isPresented: $showAlert) {
            Button("확인", role: .cancel) {}
        }
    }
}

#Preview {
    InstagramProfileView()
}
