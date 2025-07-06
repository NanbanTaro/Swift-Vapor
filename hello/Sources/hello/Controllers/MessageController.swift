//
//  MessageController.swift
//  hello
//
//  Created by NanbanTaro on 2025/06/29.
//  
//

import Fluent
import Vapor

// ルーティング、リクエスト受付、Service呼び出し、レスポンス作成等を行う
struct MessageController: RouteCollection {
    let service = MessageService()

    func boot(routes: any RoutesBuilder) throws {
        let messageRoute = routes.grouped("messages")

        messageRoute.post(use: create)
        messageRoute.get(use: getAll)
    }

    func create(req: Request) async throws -> Message {
        let createReq = try req.content.decode(CreateMessageRequest.self)
        let message = Message(text: createReq.text)
        try await message.save(on: req.db)
        return message
    }

    func getAll(req: Request) async throws -> [Message] {
        try await Message.query(on: req.db).all()
    }
}
