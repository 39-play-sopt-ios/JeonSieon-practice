//
//  TextView.swift
//  Assignment1
//
//  Created by 전시언 on 10/5/26.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0){
            Text("39기 iOS")
                .font(.title)
                .fontWeight(.bold)
            
            Text("작은 화면부터 직접 만들어 봅시다. 긴 문장은 주어진 너비에 맞춰 여러 줄로 표시될 수 있어요.")
                .font(.body)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}

#Preview {
    TextView()
}
