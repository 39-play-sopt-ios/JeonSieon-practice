//
//  ConfirmAlert.swift
//  Practice
//
//  Created by sieon on 11/6/26.
//

import SwiftUI

import SwiftUI


struct ConfirmAlertModifier<Item>: ViewModifier {
    @Binding var item: Item?
    let message: String
    let confirmTitle: String
    let onConfirm: (Item) -> Void
    
    func body(content: Content) -> some View {
        content
            .overlay {
                if let target = item {
                    ZStack {
                        Color.black.opacity(0.4)
                            .ignoresSafeArea()
                            .onTapGesture { item = nil }
                        
                        VStack(spacing: 20) {
                            Text(message)
                                .font(.medium)
                            
                            HStack(spacing: 12) {
                                Button {
                                    item = nil
                                } label: {
                                    Text("취소")
                                        .font(.subhead3)
                                        .foregroundStyle(.black)
                                        .frame(maxWidth: .infinity, minHeight: 49)
                                        .background(Capsule().fill(.gray1))
                                }
                                
                                Button {
                                    onConfirm(target)
                                    item = nil
                                } label: {
                                    Text(confirmTitle)
                                        .font(.subhead3)
                                        .foregroundStyle(.white)
                                        .frame(maxWidth: .infinity, minHeight: 49)
                                        .background(Capsule().fill(.black))
                                }
                            }
                        }
                        .padding(24)
                        .background(
                            RoundedRectangle(cornerRadius: 20).fill(.white)
                        )
                        .padding(.horizontal, 48)
                    }
                }
            }
    }
}

extension View {
    func confirmAlert<Item>(
        item: Binding<Item?>,
        message: String,
        confirmTitle: String,
        onConfirm: @escaping (Item) -> Void
    ) -> some View {
        modifier(ConfirmAlertModifier(
            item: item,
            message: message,
            confirmTitle: confirmTitle,
            onConfirm: onConfirm
        ))
    }
}
