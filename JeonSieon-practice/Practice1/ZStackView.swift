//
//  ZStackView.swift
//  Assignment1
//
//  Created by 전시언 on 10/5/26.
//

import SwiftUI

struct ZStackView: View {
    var body: some View {
        ZStack(alignment: .center){
            Rectangle()
                .fill(.green)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.yellow)
                .frame(height:100)
            
            Capsule()
                .foregroundStyle(.red)
                .frame(height: 80)
            
            Circle()
                .fill(.cyan)
                .frame(width: 60, height: 60)
        }
        .frame(width: 160, height: 140)
    }
}

#Preview {
    ZStackView()
}
