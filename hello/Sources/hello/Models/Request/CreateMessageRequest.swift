//
//  CreateMessageRequest.swift
//  hello
//
//  Created by NanbanTaro on 2025/06/28.
//  
//

import Vapor

// リクエスト用DTO
struct CreateMessageRequest: Content {
    /// メッセージテキスト
    let text: String
}