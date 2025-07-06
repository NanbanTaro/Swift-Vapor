import Fluent
import FluentSQLiteDriver
import Vapor

public func configure(_ app: Application) throws {
    // SQLite設定
    // プロジェクトルートのパスを取得
    let rootDirectory = DirectoryConfiguration.detect().workingDirectory
    let dbPath = "\(rootDirectory)db.sqlite"
    app.databases.use(.sqlite(.file(dbPath)), as: .sqlite)

    // マイグレーション登録
    app.migrations.add(CreateMessage())

    // マイグレーション自動実行
//    try app.autoMigrate().wait()

    // ルーティング
    try routes(app)
}
