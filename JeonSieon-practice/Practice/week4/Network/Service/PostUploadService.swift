//
//  PostUploadService.swift
//  Practice
//
//  Created by sieon on 11/5/26.
//

import Foundation

final class PostUploadService {
    static let shared = PostUploadService()
    private init() {}
    
    private func makeRequestBody(title: String, content: String, author: String) throws -> Data {
        do {
            return try JSONEncoder().encode(PostUploadRequestDTO(title: title, content: content, author: author))
        } catch {
            throw NetworkError.requestEncodingError
        }
    }
    
    private func makeRequest(body: Data, authorizationCode: String) throws -> URLRequest {
        guard let baseURL = Bundle.main.object(forInfoDictionaryKey: "BASE_URL") as? String,
              let url = URL(string: baseURL) else {
            throw NetworkError.urlError
        }
        var request = URLRequest(
            url: url.appending(path: "/api/v1/posts")
        )
        
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue(authorizationCode, forHTTPHeaderField: "Authorization")
        request.httpBody = body
        return request
    }
    
    func postUpload(title: String, content: String, author: String, authorizationCode: String) async throws -> PostUploadResponseDTO {
        let body = try makeRequestBody(title: title, content: content, author: author)
        let request = try makeRequest(body: body, authorizationCode: authorizationCode)
        let (data, response) = try await URLSession.shared.data(for: request)
        
        guard let httpResponse = response as? HTTPURLResponse else {
            throw NetworkError.responseError
        }
        
        guard (200..<300).contains(httpResponse.statusCode) else {
            throw NetworkError(statusCode: httpResponse.statusCode)
        }
        
        do {
            return try JSONDecoder().decode(PostUploadResponseDTO.self, from: data)
        } catch {
            throw NetworkError.responseDecodingError
        }
    }
}
