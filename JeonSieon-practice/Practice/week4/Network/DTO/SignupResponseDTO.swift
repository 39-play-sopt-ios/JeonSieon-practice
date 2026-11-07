//
//  SignupResponseDTO.swift
//  Practice1
//
//  Created by sieon on 10/31/26.
//

import SwiftUI

struct SignupResponseDTO : Decodable{
    let isSuccess: Bool?
    let code: String?
    let message: String?
    let data: AuthorizationCodeData?
    
    struct AuthorizationCodeData: Decodable {
        let authorizationCode: String?
    }
}

