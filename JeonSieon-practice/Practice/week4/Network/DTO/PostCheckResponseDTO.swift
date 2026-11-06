//
//  PostCheckResponseDTO.swift
//  Practice
//
//  Created by sieon on 11/3/26.
//

import Foundation

struct PostCheckResponseDTO : Decodable{
    let isSuccess: Bool
    let code: String
    let message: String
    let data: PostsData?
    
    struct PostsData: Decodable {
        let posts: [Post]
        let nextCursor: Int?
        let hasNext: Bool
    }
    
    struct Post: Decodable {
        let id: Int
        let title: String
        let content: String
        let author: String
        let createdAt: String
        let updatedAt: String
    }
}
