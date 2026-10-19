//
//  HStackView.swift
//  Assignment1
//
//  Created by 전시언 on 10/5/26.
//

import SwiftUI

struct HStackView: View {
    var body: some View {
        HStack {
            Image(systemName: "person.crop.circle.fill")
                .font(.largeTitle)
            
            Text("iOS 개발자")
            
        Spacer()
            
            Text("39기")
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    HStackView()
}
