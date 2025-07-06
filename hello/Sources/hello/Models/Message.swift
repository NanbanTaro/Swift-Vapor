//
//  Message.swift
//  hello
//
//  Created by NanbanTaro on 2025/06/28.
//  
//

import Fluent
import Vapor

final class Message: Model, Content, @unchecked Sendable {
    static let schema = "messages"

    @ID(key: .id)
    var id: UUID?

    @Field(key: "text")
    var text: String

    init() {}

    init(text: String) {
        self.text = text
    }
}
