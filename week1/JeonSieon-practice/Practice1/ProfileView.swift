//
//  ProfileView.swift
//  Assignment1
//
//  Created by 전시언 on 10/5/26.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack(alignment: .bottom){
            Image("Oval")
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack{
                VStack(alignment: .leading){
                    Text("타꼬")
                        .font(.title)
                    Text("동물의 숲 주민 친구")
                        .font(.headline)
                    
                }
                Spacer()
            }
            .padding()
            .foregroundColor(.primary)
            .background(.white.opacity(0.75))
        }
    }
}

#Preview {
    ProfileView()
}
