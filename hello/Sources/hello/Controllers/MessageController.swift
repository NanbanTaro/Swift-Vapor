//
//  MessageController.swift
//  hello
//
//  Created by NanbanTaro on 2025/06/29.
//  
//

import Vapor

// ルーティング、リクエスト受付、Service呼び出し、レスポンス作成等を行う
struct MessageController: RouteCollection {
    let service = MessageService()

    func boot(routes: any RoutesBuilder) throws {
        let messageRoute = routes.grouped("messages")
        messageRoute.get("hello", use: hello)
        messageRoute.post("echo", use: echo)
    }

    func hello(req: Request) throws -> Message {
        return Message(message: "こんにちは、まーちゃん！")
    }

    func echo(req: Request) throws -> Message {
        let input = try req.content.decode(Message.self)
        let output = service.duplicate(input.message)
        return Message(message: output)
    }
}
