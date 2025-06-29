//
//  Message.swift
//  hello
//
//  Created by NanbanTaro on 2025/06/28.
//  
//

import Vapor

struct Message: Content {
    /// メッセージ
    let message: String
}
