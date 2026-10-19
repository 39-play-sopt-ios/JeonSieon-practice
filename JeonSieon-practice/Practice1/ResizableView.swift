//
//  ResizableView.swift
//  Assignment1
//
//  Created by 전시언 on 10/4/26.
//

import SwiftUI

struct ResizableView: View {
    var body: some View {
        Image("Oval")
            .resizable()
            .scaledToFill()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
    }
    //resizable은 이미지에만 쓸 수 있다. frame 먼저 적용하면 일반적인 someView가 되므로 Image 전용인 resiable() 사용 불가
}

#Preview {
    ResizableView()
}
