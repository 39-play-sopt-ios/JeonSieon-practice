//
//  PostUploadRequestDTO.swift
//  Practice
//
//  Created by sieon on 11/5/26.
//

import Foundation

struct PostUploadRequestDTO: Encodable {
    let title: String
    let content: String
    let author: String
}
