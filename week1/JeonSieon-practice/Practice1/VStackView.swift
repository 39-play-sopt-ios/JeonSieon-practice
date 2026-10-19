//
//  VStackView.swift
//  Assignment1
//
//  Created by 전시언 on 10/5/26.
//

import SwiftUI

struct VStackView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12){
            Text("제목")
            Text("설명")
        }
    }
}

#Preview {
    VStackView()
}
