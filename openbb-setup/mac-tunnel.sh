#!/usr/bin/env bash
# Mac側 SSH トンネルスクリプト
# 実行: bash mac-tunnel.sh
#
# Ubuntu側で openbb-api が起動している必要があります

SSH_HOST="ubuntu-kouichi"   # ~/.ssh/config のホスト名
LOCAL_PORT=6900
REMOTE_PORT=6900

echo "=== OpenBB SSH トンネル接続 ==="
echo "接続先: $SSH_HOST"
echo "Mac側アクセスURL: http://127.0.0.1:$LOCAL_PORT"
echo "Ctrl+C で終了"
echo ""
echo "接続後、ブラウザで以下を開いてください:"
echo "  http://127.0.0.1:$LOCAL_PORT"
echo ""

ssh -N -L "${LOCAL_PORT}:127.0.0.1:${REMOTE_PORT}" "$SSH_HOST"
