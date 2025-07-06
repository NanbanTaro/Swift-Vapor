# Swift-Vapor

## 環境構築

### Vaporインストール

※Xcodeはインストール済み前提

```bash
brew install vapor
vapor --help
```

### プロジェクト作成、IDE起動

```bash
vapor new hello -n
open Package.swift
```

### ローカルサーバー起動

1. Xcodeビルドでローカルサーバー起動

### ビルド

Xcodeでもビルド可能だが、VSCode等でのエディターでのビルドを推奨

- Xcodeビルドの場合、DerivedData内にSQLiteファイルが生成されるものを利用する
- VSCodeビルドの場合、プロジェクト直下のファイルとして生成されるものを利用する

```bash
swift run
```

### マイグレーション

1. (初回のみ)`Package.swift`にDBの依存関係を追加
1. `Migration`フォルダにマイグレーション処理追加
1. `configure.swift`にマイグレーション登録とDB設定追加
1. 下記コマンドを実行する

```bash
swift run hello migrate
```

## フォルダ構造

| 役割           | 説明                                               |
| ------------ | ------------------------------------------------ |
| Controller   | ルーティング、リクエスト受付、Service呼び出し、レスポンス作成             |
| Service      | 実際のロジックやビジネス処理の中核部分                                 |
| Migration    | マイグレーション処理                                                |
| Model        | データ構造、DBとのマッピングなど                                      |
| routes.swift | コントローラの登録（`app.register(collection:)`）だけに絞るのがベター  |


## API

### [GET]メッセージ全取得

http://127.0.0.1:8080/messages

### [POST]メッセージ追加

http://127.0.0.1:8080/messages

| 題目         | 型         | 説明                            |
| ----------- | ---------- | ------------------------------ |
| text        | String     | 適当なメッセージ                  |

