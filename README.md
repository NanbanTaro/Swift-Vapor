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

## フォルダ構造

| 役割           | 説明                                               |
| ------------ | ------------------------------------------------ |
| Controller   | ルーティング、リクエスト受付、Service呼び出し、レスポンス作成             |
| Service      | 実際のロジックやビジネス処理の中核部分                                 |
| Model        | データ構造、DBとのマッピングなど                                      |
| routes.swift | コントローラの登録（`app.register(collection:)`）だけに絞るのがベター  |