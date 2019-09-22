# green-turtle-article

ブログ green-turtle 記事管理用リポジトリ 

## 記事を書くとき

1. draft/(article id) ブランチを切る
1. mkdir (article id) && cd (article id) && touch index.md
1. index.mdに記事を書く
1. 適宜commit, push
1. pullreqを出してもう一度読み直し、良さげならmerge

まとめたコマンドが ./new.sh

***注意: new.shはgitコマンドを内包しているが、現在diffがあるか等を検証してないので、stagingと未stagingに変更がないときのみ呼んで!!!!***  
注意: 現在の仕様では記事IDとして認められるのは半角英数のみ。`./new.sh`を使えばこれ以外を弾くようにしてあるはずだが。

## Todo

- masterをpush不可に
- firebaseCLIでデプロイ出来るように -> やった
- circleCIでデプロイ自動化 -> やった
- ブログデザインを作る -> 最低限やった

## ローカルで見え方をチェックする

### `./dev.sh`

ローカルにサーバーが立って [http://127.0.0.1:8080](http://127.0.0.1:8080)にアクセスできるようになる。

### `./undev.sh` 

`dev.sh`でcloneした`green-turtle`ディレクトリを削除するだけ。
ちなみに仮に`./undev.sh`しなかったとしても.gitignoreに`/green-turtle/`を登録しているので、記事以外の内容がgitで追跡されることはない。

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

補足: 現在はこれに準ずるような内容でmasterにmergeされたら自動デプロイされるようになっている。
