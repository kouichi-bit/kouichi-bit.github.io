# OpenBB リモートセットアップ

Linux側でAPIサーバーを起動し、Mac側のブラウザから接続する構成です。

```
Mac側
  ブラウザ / OpenBB Workspace
       ↓ SSHトンネル経由HTTP
Linux側（ubuntu-kouichi）
  openbb-api (port 6900)
```

---

## 手順

### 1. Ubuntu側: セットアップ（初回のみ）

```bash
bash setup-ubuntu.sh
```

### 2. Ubuntu側: APIサーバー起動

```bash
bash start-openbb-api.sh
```

ターミナルを閉じても動かし続けたい場合：

```bash
# tmux を使う場合
tmux new-session -d -s openbb 'bash ~/codex_work/start-openbb-api.sh'

# または systemd に登録（openbb-api.service 参照）
```

### 3. Mac側: SSHトンネルを張る

```bash
bash mac-tunnel.sh
```

### 4. Mac側: ブラウザでアクセス

```
http://127.0.0.1:6900
```

OpenBB Workspace から接続する場合は、Apps → Connect backend で上記URLを指定。

---

## ファイル構成

| ファイル | 説明 |
|---|---|
| `setup-ubuntu.sh` | Ubuntu側 初回セットアップ |
| `start-openbb-api.sh` | Ubuntu側 APIサーバー起動 |
| `openbb-api.service` | systemd サービス定義（常時起動用） |
| `mac-tunnel.sh` | Mac側 SSHトンネル接続 |
