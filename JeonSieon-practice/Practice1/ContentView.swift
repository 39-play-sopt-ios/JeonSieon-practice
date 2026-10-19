//
//  ContentView.swift
//  Assignment1
//
//  Created by 전시언 on 10/4/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("아요의 숲에서 사과 한 입 앙~~")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .padding()
                .background(.blue)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
