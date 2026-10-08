//
//  TextFieldView.swift
//  Practice1
//
//  Created by 전시언 on 10/7/26.
//

import SwiftUI

struct TextFieldView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 16){
            TextField("이메일", text: $email)
            SecureField("비밀번호", text: $password)
            
            Text("입력한 이메일: \(email)")
            
            Button("예시 이메일 넣기") {
                email = "sopt@example.com"
            }
        }
        .textFieldStyle(.roundedBorder)
        .padding()

    }
}

#Preview {
    TextFieldView()
}
