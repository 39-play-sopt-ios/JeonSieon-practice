//
//  InstagramGrid.swift
//  Practice1
//
//  Created by 전시언 on 10/19/26.
//

import SwiftUI

struct InstagramGrid: View {
    @State private var stext = ""
    
    var body: some View {
        VStack{
            HStack(spacing: 0){
                TextField("검색", text: $stext,
                          prompt: Text("검색:")
                )
                .font(.system(size: 13, weight: .regular))
                .foregroundStyle(.gray1)
                .padding(.leading, 15)
                .frame(width: 319, height: 36)
                .clipShape(
                    RoundedRectangle(cornerRadius: 5)
                )
                .overlay {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.gray300, lineWidth: 0.5)
                }
                .padding(.leading, 11)
                .padding(.trailing, 13)
                Image("BookMark")
            }
            .padding(.bottom, 23)
            
            
            
            ScrollView{
                Grid(horizontalSpacing: 1, verticalSpacing: 1)
                {
                    ForEach(0..<6, id: \.self){ row in
                        GridRow {
                            ForEach(1..<4, id: \.self) {
                                column in
                                let index = row * 3 + column
                                
                                Color.clear
                                    .aspectRatio(1, contentMode: .fit)
                                    .overlay {
                                        Image("Rectangle\(index)")
                                            .resizable()
                                            .scaledToFill()
                                    }
                                    .clipped()
                            }
                            
                        }
                    }
                    
                }
                
                
            }
        }
    }
}


#Preview {
    InstagramGrid()
}
