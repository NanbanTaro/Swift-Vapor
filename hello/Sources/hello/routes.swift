import Vapor

// コントローラーの登録をメインに行う
func routes(_ app: Application) throws {
    try app.register(collection: MessageController())
}
