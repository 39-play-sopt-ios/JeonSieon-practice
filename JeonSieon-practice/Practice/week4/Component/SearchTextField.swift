//
//  SearchTextFieldView.swift
//  Practice
//
//  Created by sieon on 11/3/26.
//

import SwiftUI


struct SearchTextField: View {
    let placeholder: String
    @Binding var text: String
    var icon: ImageResource? = nil
    
    var body: some View {
        HStack{
            TextField(placeholder, text: $text)
                .autocorrectionDisabled()
                .textInputAutocapitalization(.never)
            
            if let icon {
                Image(.search)
            }
        }
        .padding()
        .frame(width: 343, height: 56)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(.white)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(.gray2, lineWidth: 2)
        )
        
    }
}

#Preview {
    SearchTextField(placeholder: "검색어를 입력해주세요",text: .constant("te"))
}
