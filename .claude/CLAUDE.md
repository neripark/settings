# CLAUDE.md

## Conversation Guidelines

- 常に日本語で会話する

## Development Philosophy

### Test-Driven Development (TDD)

- 原則としてテスト駆動開発（TDD）で進める
- 期待される入出力に基づき、まずテストを作成する
- 実装コードは書かず、テストのみを用意する
- テストを実行し、失敗を確認する
- テストが正しいことを確認できた段階でコミットする
- その後、テストをパスさせる実装を進める
- 実装中はテストを変更せず、コードを修正し続ける
- すべてのテストが通過するまで繰り返す

### Check Pull-Request CI Results
- コードをプッシュしたら、CIの完了を待つ
- CIが失敗していたら、コードを修正して再度プッシュする
- CIがパスするまで繰り返す

### Permission Management
- 新しいBashコマンドの権限が必要になった場合は、常にグローバル設定（~/.claude/settings.json）に保存する
- プロジェクトローカルの.claude/settings.local.jsonは使用しない
- 権限はすべて一箇所で管理することで、設定の重複や混乱を避ける