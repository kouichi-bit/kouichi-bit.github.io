# OpenBB Workspace への接続手順

スクリーンショットの画面（`http://127.0.0.1:6900`）は、OpenBB Platform がローカルで起動している状態です。  
「Connect to the OpenBB Workspace」は、このバックエンドを **OpenBB Workspace**（フロントエンドUI）と繋げる手順の案内です。

## やること

### 1. OpenBB Workspace を入手する

- **ウェブ版**: [https://pro.openbb.co](https://pro.openbb.co) にアクセス（要アカウント登録）
- **デスクトップ版**: OpenBB の公式サイトからダウンロード可能

### 2. Workspace 上でバックエンドを設定する

Workspace にログイン後：

1. 画面左のサイドバーから **Settings**（設定）を開く
2. **Data Sources** または **Connections** のセクションを探す
3. 「Add backend」などのボタンで新しい接続を追加
4. URL に `http://127.0.0.1:6900` を入力
5. 接続テストを実行

### 3. 確認

接続が成功すると、Workspace 上でローカルの Platform 経由でデータにアクセスできるようになります。

---

## 補足

- 現在のリポジトリ（`kouichi-bit.github.io`）はプライバシーポリシー用のサイトで、OpenBB の設定ファイルは含まれていません。
- OpenBB の設定は通常 `~/.openbb/` や Python の仮想環境側に保存されます。
- OpenBB のアカウント登録や Workspace の具体的なバージョンによって画面が異なる場合があります。
