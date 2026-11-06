//
//  PostViewModel.swift
//  Practice
//
//  Created by sieon on 11/3/26.
//

import Foundation
import Observation

@MainActor
@Observable
final class PostViewModel {
    private(set) var examplePosts: [BoardPostModel] = []
    private(set) var isLoading = false
    private(set) var errorMessage = ""
    
    var deleteTarget: BoardPostModel?
    
    func loadPosts() async {
        errorMessage = ""
        
        do {
            let response = try await PostCheckService.shared.getPosts()
            let dtoPosts = response.data?.posts ?? []
            examplePosts = dtoPosts.map { BoardPostModel(dto: $0) }
        } catch {
            errorMessage = "게시글을 불러오지 못했어요."
            print(error)
        }
        
    }
    
    func uploadPost(title: String, content: String, author: String, authorizationCode: String) async -> Bool {
        errorMessage = ""
        
        do {
            _ = try await PostUploadService.shared.postUpload(
                title: title,
                content: content,
                author: author,
                authorizationCode: authorizationCode
            )
            await loadPosts()
            return true
        } catch {
            errorMessage = "게시글 등록에 실패했어요."
            print(errorMessage)
            print(error)
            return false
        }
    }
    
    func deletePost(postId: Int, authorizationCode: String) async -> Bool {
        errorMessage = ""
        
        do {
            try await PostDeleteService.shared.deletePost(
                postId: postId,
                authorizationCode: authorizationCode
            )
            await loadPosts()
            return true
        } catch {
            errorMessage="게시글 삭제 실패했어요."
            print(error)
            return false
        }
    }
    
    func requestDelete(_ post: BoardPostModel) {
        deleteTarget = post
    }
}
