# basd4g.hatenablog.com

My [blog](https://basd4g.hatenablog.com)'s articles.

## Installation

```sh
$ git clone https://github.com/basd4g/basd4g.hatenablog.com.git
$ cd basd4g.hatenablog.com
$ gimonfu init
```

## Download articles

```sh
$ gimonfu pull
```

## Upload articles

```sh
$ gimonfu push
```

## Automatic deploying

[Hatenablog](https://basd4g.hatenablog.com) and [this repository](https://github.com/basd4g/basd4g.hatenablog.com) is automatically synced with GitHub Actions and [gimonfu](https://github.com/basd4g/gimonfu).

Run [a uploading workflow](https://github.com/basd4g/basd4g.hatenablog.com/blob/master/.github/workflows/push.yaml) with push to master.

Run [a downloading workflow](https://github.com/basd4g/basd4g.hatenablog.com/blob/master/.github/workflows/pull.yaml) every hour.

## Old blog URL

~2020/5/31: [Green Turtle](https://blog.yammer.fun)

## Check markdown articles

```sh
$ yarn global add basd4g/md-server
$ md-server
```

[md-server](https://github.com/basd4g/md-server)

