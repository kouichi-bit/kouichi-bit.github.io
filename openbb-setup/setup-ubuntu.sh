#!/usr/bin/env bash
# Ubuntu側 OpenBB セットアップスクリプト
# 実行: bash setup-ubuntu.sh

set -e

WORK_DIR="$HOME/codex_work"
ENV_DIR="$WORK_DIR/openbb_env"

echo "=== OpenBB セットアップ開始 ==="

# 作業ディレクトリ作成
mkdir -p "$WORK_DIR"
cd "$WORK_DIR"

# Python3 / pip の確認
if ! command -v python3 &>/dev/null; then
    echo "python3が見つかりません。インストールしてください: sudo apt install python3 python3-venv python3-pip"
    exit 1
fi

# venv 作成（既存があればスキップ）
if [ ! -d "$ENV_DIR" ]; then
    echo "--- 仮想環境を作成: $ENV_DIR"
    python3 -m venv "$ENV_DIR"
else
    echo "--- 仮想環境は既に存在します: $ENV_DIR"
fi

source "$ENV_DIR/bin/activate"

echo "--- pip アップグレード"
pip install --upgrade pip --quiet

echo "--- OpenBB インストール（時間がかかります）"
pip install "openbb[all]" --quiet

echo "--- インストール確認"
python3 -c "import openbb; print('OpenBB version:', openbb.__version__)"

echo ""
echo "=== セットアップ完了 ==="
echo ""
echo "次のコマンドでAPIサーバーを起動してください:"
echo "  source $ENV_DIR/bin/activate"
echo "  openbb-api --host 0.0.0.0 --port 6900"
