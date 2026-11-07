//
//  PostUploadResponseDTO.swift
//  Practice
//
//  Created by sieon on 11/5/26.
//

import Foundation

struct PostUploadResponseDTO: Decodable {
    let isSuccess: Bool
    let code: String
    let message: String
    let data: PostsData?
    
    struct PostsData: Decodable {
        let id: Int
        let title: String
        let content: String
        let author: String
        let createdAt: String
        let updatedAt: String
    }
}
