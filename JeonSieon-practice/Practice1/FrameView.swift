//
//  FrameView.swift
//  Assignment1
//
//  Created by 전시언 on 10/4/26.
//

import SwiftUI

struct FrameView: View {
    var body: some View {
        VStack(spacing: 16){
            Text("고정 너비")
                .frame(width: 200, height: 44)
                .background(.blue.opacity(0.15))
            Text("가능한 너비 사용")
                .frame(maxWidth: .infinity)
                .frame(height: 44)
                .background(.orange.opacity(0.15))
        }
        .padding()
        
        VStack(spacing: 24){
            Text("여백까지 파란색")
                .padding(16)
                .background(.blue)
            
            Text("글자 영역만 파란색")
                .background(.blue)
                .padding(16)
        }
        .padding()
        
        VStack(spacing: 24){
            Text("넓은 배경")
                .frame(maxWidth: .infinity)
                .background(.yellow)
            Text("글자 크기의 배경")
                .background(.yellow)
                .frame(maxWidth: .infinity)
        }
        
        VStack{
            Text("제목")
                .font(.title)
            
            Text("설명")
        }
        .padding()
        .background(.gray)
        
        VStack{
            Text("안녕하세요")
            Text("반갑습니다")
                .foregroundStyle(.red)
            Text("모아모아모아요")
                .font(.caption)
        }
        .foregroundStyle(.blue)
        .font(.title)
        .padding()
        
        
    }
    
    
    
}

#Preview {
    FrameView()
}
