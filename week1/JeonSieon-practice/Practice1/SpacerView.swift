//
//  SpacerView.swift
//  Assignment1
//
//  Created by 전시언 on 10/5/26.
//

import SwiftUI

struct SpacerView: View {
    var body: some View {
        HStack{
            Spacer()
            
            Image(systemName: "checkmark")
            
            Text("모아요")
            
            Spacer()
        }
        .border(Color.blue)
    }
}

#Preview {
    SpacerView()
}
