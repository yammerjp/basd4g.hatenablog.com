# green-turtle-article

ブログ green-turtle 記事管理用リポジトリ 

## 記事を書くとき

1. draft/(article id) ブランチを切る
1. mkdir (article id) && cd (article id) && touch index.md
1. index.mdに記事を書く
1. 適宜commit, push
1. pullreqを出してもう一度読み直し、良さげならmerge

## Todo

- masterをpush不可に
- firebaseCLIでデプロイ出来るように
- circleCIでデプロイ自動化
- ブログデザインを作る

## CircleCIで使われる予定のshell

```sh make.sh

#!/usr/bin/bash
git clone https://github.com/basd4g/green-turtle.git
rm -rf green-turtle/assets
git clone https://github.com/basd4g/green-turtle-article.git
mkdir green-turtle/assets
mkdir green-turtle/assets/article
mv green-turtle-article/* green-turtle/assets/article
cd green-turtle
yarn install
yarn make
mv dist ../
cd ../

# dist配下をfirebase CLIでデプロイ

```
