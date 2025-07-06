//
//  CreateMessage.swift
//  hello
//
//  Created by NanbanTaro on 2025/06/29.
//  
//

import Fluent

struct CreateMessage: Migration {
    func prepare(on database: any Database) -> EventLoopFuture<Void> {
        database.schema(Message.schema)
            .id()
            .field("text", .string, .required)
            .create()
    }

    func revert(on database: any Database) -> EventLoopFuture<Void> {
        database.schema(Message.schema)
            .delete()
    }
}
