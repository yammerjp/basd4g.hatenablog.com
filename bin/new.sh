#!/bin/bash -e

SCRIPT_DIR=$(cd "$(dirname "$0")"; pwd)
cd "$SCRIPT_DIR"

validId() 
{ 
  if echo "$1" | grep -E "^([0-9a-z]|-)+$" > /dev/null 2>&1 ; then
    return 0
  fi
  return 1
}

new_article_id="$1"
new_article_path="posts/$new_article_id.md"

if [ $# -ne 1 ] || ! validId "$new_article_id" || [ -e "$new_article_path" ] ; then
  echo "引数として渡された記事idが不正" 1>&2
  exit 1
fi

# 新しい記事に初期値を入れる
cat << EOF >> "$new_article_path"
---
title: "$new_article_id"
date $(date '+%Y/%m/%d %H:%M')
tags:
---
EOF

echo "Created new article file '$new_article_path'."

