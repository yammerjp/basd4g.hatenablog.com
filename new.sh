#!/bin/sh

if [ $# -ne 1 ]; then
  echo "引数(記事id)は1つ指定してな、$#個はアカンで。" 1>&2
  exit 1
fi

validAlphaNum() 
{ 
  # 引数が英数字だけの文字列なら 0 を返し、そうでない場合には 1 を返す． 
  # 英数字以外の文字をすべて削除する． 
  compressed="$(echo $1 | sed -e 's/[^[:alnum:]]//g')" 
 
  if [ "$compressed" != "$1" ] ; then 
    return 1 
  else 
    return 0 
  fi 
}
if ! validAlphaNum "$1" ; then 
  echo "引数(記事id)は半角英数でないとアカンで。" >&2 
  exit 1 
fi

if [ -e $1 ]; then
  echo "その引数(記事id)のファイルorディレクトリは既に存在してるねん。"
  exit 1
fi

# 引数(記事id)のブランチ名が無いことを確認
git fetch
git branch -a 

git checkout master
git checkout -b 