#!/usr/bin/env bash
# 从模板创建新城市档案骨架
#
# 用法: bash scripts/new-city.sh <path> <城市名> <省份名>
#   <path> 为 cities.yml 中该城市 path 去掉 "cities/" 前缀
#
# 示例:
#   bash scripts/new-city.sh fujian/xiamen 厦门 福建
#   bash scripts/new-city.sh beijing 北京 直辖市
set -euo pipefail

if [ $# -ne 3 ]; then
  echo "用法: bash scripts/new-city.sh <path> <城市名> <省份名>" >&2
  echo "示例: bash scripts/new-city.sh fujian/xiamen 厦门 福建" >&2
  exit 1
fi

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DEST="$ROOT/cities/$1"

if [ -e "$DEST" ]; then
  echo "错误: $DEST 已存在，不会覆盖。" >&2
  exit 1
fi

mkdir -p "$DEST"
cp -R "$ROOT/templates/city/." "$DEST/"

# 字节级替换，避免 UTF-8 编解码问题（占位符本身是 ASCII）
export CITY="$2" PROVINCE="$3" TODAY="$(date +%Y-%m-%d)"
find "$DEST" -type f -exec perl -pi -e \
  's/\{\{CITY\}\}/$ENV{CITY}/g; s/\{\{PROVINCE\}\}/$ENV{PROVINCE}/g; s/\{\{DATE\}\}/$ENV{TODAY}/g' {} +

echo "已创建 $DEST"
echo "下一步:"
echo "  1. cities.yml 中将该城市 status 改为 scaffolded"
echo "  2. 按 AGENTS.md 的流程填写 01 → 12 各维度"
