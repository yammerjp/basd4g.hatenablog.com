# green-turtle-article

ブログ green-turtle 記事管理用リポジトリ 

## 記事を書くとき

1. draft/[article id]ブランチを切る
1. `vim posts/[article id].md`
1. index.mdに記事を書く
1. 適宜commit, push
1. pullreqを出してもう一度読み直し、良さげならmerge

注意: 現在の仕様では記事IDとして認められるのは半角英数のみ。

## Todo

- masterをpush不可に

## ローカルで見え方をチェックする

```sh
$ cd green-turtle-article
$ md-server
```

[md-server](https://github.com/basd4g/md-server)で、ローカルにサーバを建てられる。

