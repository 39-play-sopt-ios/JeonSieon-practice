//
//  PostCheckService.swift
//  Practice
//
//  Created by sieon on 11/3/26.
//

import Foundation

final class PostCheckService {
    static let shared = PostCheckService()
    private init() {}
    
    private func makeRequest() throws -> URLRequest {
        guard let baseURL = Bundle.main.object(forInfoDictionaryKey: "BASE_URL") as? String,
              let url = URL(string: baseURL) else {
            throw NetworkError.urlError
        }
        
        var request = URLRequest(
            url: url.appending(path: "/api/v1/posts")
        )
        request.httpMethod = "GET"
        
        return request
    }
    
    func getPosts() async throws -> PostCheckResponseDTO {
        let request = try makeRequest()
        let (data, response) = try await URLSession.shared.data(for: request)
        
        guard let httpResponse = response as? HTTPURLResponse else {
            throw NetworkError.responseError
        }
        
        guard (200..<300).contains(httpResponse.statusCode) else {
            throw NetworkError(statusCode: httpResponse.statusCode)
        }
        
        do {
            return try JSONDecoder().decode(PostCheckResponseDTO.self, from: data)
        } catch {
            print("서버 응답:", String(data: data, encoding: .utf8) ?? "")   
            print("디코딩 에러:", error)
            throw NetworkError.responseDecodingError
        }
    }
}
