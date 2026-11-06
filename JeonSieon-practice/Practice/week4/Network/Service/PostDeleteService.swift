//
//  PostDeleteService.swift
//  Practice
//
//  Created by sieon on 11/6/26.
//

import Foundation

final class PostDeleteService {
    static let shared = PostDeleteService()
    private init() {}
    
    private func makeRequest(postId: Int, authorizationCode: String) throws -> URLRequest {
        guard let baseURL = Bundle.main.object(forInfoDictionaryKey: "BASE_URL") as? String,
              let url = URL(string: baseURL) else {
            throw NetworkError.urlError
        }
        
        var request = URLRequest(
            url: url.appending(path: "/api/v1/posts/\(postId)")
        )
        request.httpMethod = "DELETE"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue(authorizationCode, forHTTPHeaderField: "Authorization")

        return request
    }
    
    func deletePost(postId: Int, authorizationCode: String) async throws -> PostDeleteResponseDTO {
        let request = try makeRequest(postId: postId, authorizationCode: authorizationCode)
        let (data, response) = try await URLSession.shared.data(for: request)
        
        guard let httpResponse = response as? HTTPURLResponse else {
            throw NetworkError.responseError
        }
        
        guard (200..<300).contains(httpResponse.statusCode) else {
            throw NetworkError(statusCode: httpResponse.statusCode)
        }
        
        do {
            return try JSONDecoder().decode(PostDeleteResponseDTO.self, from: data)
        } catch {
            print("서버 응답:", String(data: data, encoding: .utf8) ?? "")  
            print("디코딩 에러:", error)
            throw NetworkError.responseDecodingError
        }
    }
}
