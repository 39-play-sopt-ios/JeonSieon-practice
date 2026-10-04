//
//  PaddingView.swift
//  Assignment1
//
//  Created by 전시언 on 10/4/26.
//

import SwiftUI

struct PaddingView: View {
    var body: some View {
        Text("아요의 숲에서 사과 한 입 앙~~")
            .font(.title)
            .fontWeight(.bold)
            .foregroundStyle(.black)
            .padding()
            .border(.blue)
        Text("모아요의 꿈은 이루어진다")
            .font(.title)
            .fontWeight(.light)
            .foregroundStyle(.red)
            //.padding(.leading, 30)
            .padding(.horizontal, 30)
            .border(.green)
    }
    
}

#Preview {
    PaddingView()
}
