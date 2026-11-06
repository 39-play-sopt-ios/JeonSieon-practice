//
//  BoardPostModel.swift
//  Practice
//
//  Created by sieon on 11/3/26.
//



import Foundation

struct BoardPostModel: Identifiable {
    let id: Int
    let title: String
    let content: String
    let author: String
    let createdAt: String
}

extension BoardPostModel {
    init(dto: PostCheckResponseDTO.Post) {
        self.id = dto.id
        self.title = dto.title
        self.content = dto.content
        self.author = dto.author
        self.createdAt = String(dto.createdAt.prefix(10))
            .replacingOccurrences(of: "-", with: ".")
    }
}
