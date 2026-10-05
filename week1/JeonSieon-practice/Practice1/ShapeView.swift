//
//  ShapeView.swift
//  Assignment1
//
//  Created by 전시언 on 10/5/26.
//

import SwiftUI

struct ShapeView: View {
    var body: some View {
        HStack(spacing: 16){
            Circle()
                .fill(.orange)
                .frame(width: 60, height: 60)
            
            RoundedRectangle(cornerRadius: 12)
                .strokeBorder(.blue, lineWidth: 3)
                .frame(width: 100, height: 60)
        }
    }
}

#Preview {
    ShapeView()
}
