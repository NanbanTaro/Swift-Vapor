//
//  MessageService.swift
//  hello
//
//  Created by NanbanTaro on 2025/06/28.
//  
//
import Vapor

// メッセージに関する処理を行う
struct MessageService {
    func duplicate(_ message: String) -> String {
        return message + message
    }
}
