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
git branch -a | grep -e draft/$1$
if [ $? = 0 ]; then
	echo "grepにマッチした.. 既に存在するブランチ名(引数,記事id)やで。"
  exit 1
fi


# ブランチを切る
git stash
git checkout master
git checkout -b draft/$1

# index.mdを作る
mkdir $1
touch $1/index.md

# index.mdに初期値を入れる
echo '---' >> $1/index.md
echo title: $1 >> $1/index.md
<<<<<<< HEAD
echo date: `date '+%Y-%m-%d %T'` >> $1/index.md
=======
echo date: `date '+%Y/%m/%d %H:%M'` >> $1/index.md
>>>>>>> master
echo tags: >> $1/index.md
echo '---' >> $1/index.md
echo '' >> $1/index.md
echo "## $1" >> $1/index.md
echo "" $1/index.md

git add $1/index.md
git commit -m "記事$1を追加 (new.sh)"
git push --set-upstream origin draft/$1
echo "FINISH! Add git branch draft/$1, Git commit&push, Add file $1/index.md"
code $1/index.md
