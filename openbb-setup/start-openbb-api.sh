#!/usr/bin/env bash
# Ubuntu側 openbb-api 起動スクリプト
# 実行: bash start-openbb-api.sh

ENV_DIR="$HOME/codex_work/openbb_env"

if [ ! -d "$ENV_DIR" ]; then
    echo "仮想環境が見つかりません。先に setup-ubuntu.sh を実行してください。"
    exit 1
fi

source "$ENV_DIR/bin/activate"

echo "=== OpenBB API 起動 ==="
echo "アドレス: 0.0.0.0:6900"
echo "Mac側からは SSH トンネル経由で http://127.0.0.1:6900 にアクセス"
echo "Ctrl+C で停止"
echo ""

openbb-api --host 0.0.0.0 --port 6900
