//
//  PostDeleteResponseDTO.swift
//  Practice
//
//  Created by sieon on 11/6/26.
//

import Foundation

struct PostDeleteResponseDTO: Decodable {
    let isSuccess: Bool
    let code: String
    let message: String
    let data: Int?
}
