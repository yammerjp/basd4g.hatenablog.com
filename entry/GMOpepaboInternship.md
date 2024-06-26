---
title: GMOペパボのインターンシップに参加した
date: 2019-10-16T01:51:00.000Z
categories:
  - internship
  - ペパボ
id: "26006613576772423"
draft: false
---
GMOペパボ株式会社(以下ペパボと表記させていただく) 福岡オフィスの2019年 夏インターンシップに参加した。  
2019/8/21から2019/8/30の平日8日間、ムームードメインチームのフロントエンドエンジニアとして開発させていただいたので、その記録である。

![ペパボ福岡オフィスの入り口](https://blob.yammer.jp/pepabo-intern6.jpg)
↑オフィスの入口。

インターンシップ最終日にパートナーさん<a id="annotation-from-1" href="#annotation-to-1">^1</a>の前で成果発表会をしたのだが、話しきれなかった部分もあるのでそれを消化する意味もある。
長文失礼したい。

## ペパボとムームードメイン

### ペパボとは

GMOペパボ株式会社は東京・福岡・鹿児島にオフィスを構えるGMOグループの企業の一つ。「インターネットで可能性をつなげる、ひろげる」をミッションに、インターネットで個人の表現活動をする人を支援するサービスを展開している。
レンタルサーバー「ロリポップ」、ハンドメイドマーケット「minne」等のサービスがある。

丁度インターンシップ期間中に企業紹介動画<a id="annotation-from-2" href="#annotation-to-2">^2</a>が公開された。( [別ver](https://twitter.com/achamixx/status/1167253538595954688)もある。)

<iframe width="560" height="315" src="https://www.youtube.com/embed/ANXs_ZdQtt4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

ちなみに私はインターンシップでDiscover New Something<a id="annotation-from-3" href="#annotation-to-3">^3</a>した。

福岡オフィスではホスティング系サービスの開発を行っていて、今回はその中のムームードメインチームに参加させていただいた。

### ムームードメインとは

[ムームードメイン](https://muumuu-domain.com)とは、インターネットの独自ドメイン取得サービスとしてペパボの中でも古くから続いているサービスの一つ。私も利用している。

## インターンシップでしたこと

Nuxt.jsで作られているページへの機能追加を行った。

[ドメインの価格一覧ページ](https://muumuu-domain.com/domain/price)に価格によるソート機能を追加した。
ドメイン一覧表のヘッダ箇所にボタンが追加され、昇順・降順ソートが出来るようになった。

<blockquote class="twitter-tweet"><p lang="ja" dir="ltr">価格一覧のドメインを新規取得、更新、移管の価格順に並び替えることができるようになりました。ご予算に合ったドメインを見つけやすくなります。<a href="https://t.co/QL670SQXx0">https://t.co/QL670SQXx0</a> <a href="https://t.co/wLcWnas2Cm">pic.twitter.com/wLcWnas2Cm</a></p>&mdash; ムームードメイン (@muumuu_domain) <a href="https://twitter.com/muumuu_domain/status/1169492805137256449?ref_src=twsrc%5Etfw">September 5, 2019</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

他のインターン参加者は次のようなことをやっていたようだ。各々のスキルに合わせて、チームに配属され実際の業務に加わる形式でインターンシップが進む。

- 研究所でデータ解析
- CIツール周りをごにょごにょ
- Webサービスに機能追加
- APIを書く

## 学んだこと - 技術の話

### コードリーディング

今回のインターンシップでは新たなページの追加ではなく既存ページへの機能追加を行ったことから、既に完成しているドメインの価格を表示するロジックに手を加えることになった。
既存の実装の意図を汲みながら、他ページへの影響を与えないよう設計することに注意した。

コードを呼んでロジックとデータの流れを追うことは、経験が少なかったので新鮮だった。コードを読むのは面白かったが、実装の意図を汲むのは結構難しかった。似たような機能を持つOSSライブラリも見てみたりしながら設計を固めた。

![名言](https://blob.yammer.jp/pepabo-intern7.jpg)
↑かの有名なお言葉。

### 実際に動いているサービス

サービスの規模感、エンジニアや関わる人の人数、サーバーの構成や使用されている技術スタックを知れた。1つのサービスを俯瞰して、どのように動いているのかを学べたのは貴重な経験である。  

またデザイナーさんとの分業の仕方やディレクターさんとの仕様の確認など、チームとしてサービスを支えている姿をみることができ、インターンシップの中で経験することもできた。

### issueとPullRequest

恥ずかしながらチーム開発を今夏まで経験してこなかったので、GitHubのissueとPullreqを使う機会がなかった。
ソフトウェアの実装に関する相談やまとめ、記録としても非常に有用で期間中たくさんお世話になった。

コードレビューは学ぶことがとても多く、これからの私のコードにたくさん取り入れていきたい。(既に恩恵を享受している。)

PullRequestを出す際に参考にしたいのがこちら↓。私が出したプルリクがこれにどこまで沿えていたかはおいておいて(笑)、自戒の念としても今後の参考のためにも残しておく。
特に私のようなプルリク歴の浅い方にお勧めしたい。

<script async class="speakerdeck-embed" data-id="5ea4a551f0334f888cbb13ab81b8f860" data-ratio="1.77777777777778" src="//speakerdeck.com/assets/embed.js"></script>  
参照元: [ぼくのかんがえたさいきょうのPullRequest](https://kimromi.github.io/2017-08-31/pull-request.html)

### テスト

個人で開発しているとテストを書くという発想に至らず、今までテストを書いてこなかった。そのため、今回のインターンシップでテストを書いたのもとても良い経験だった。
Vueコンポーネントを自在に手のひらで転がせるよう、転がれ転がれと念じながら過ごした(嘘)。

テストを書くといいことが沢山ある。他人のためになるだけでなく、既存の実装や構造を振り返るいい機会にもなるし、自分がのちに実装するときに恩恵(正しい動作を保証できる<a id="annotation-from-4" href="#annotation-to-4">^4</a>)を享受できる(した)。

## 感じたこと - ペパボの話

ペパボは次の[「わたしたちが大切にしている3つのこと」](https://recruit.pepabo.com/info/important/)を掲げている。

- みんなと仲良くすること
- ファンを増やすこと
- アウトプットすること

パートナー皆さんにこれが浸透していて、日々実践されているのを感じた。

### みんなと仲良くすること

まずパートナーさんが優しい。インターン生に対してだけでなく、職種やチームの壁を超えてそれぞれが仲が良い、(いい距離感だ)と感じた。
インターンシップ期間中、私をインターン生と知らないパートナーさんが声をかけてくださってお話したり、社内のシニアエンジニアの方に実装について聞いたり、いろんなパートナーさんと接する機会があったがどの方も親切だった。

![づっきーさんと私](https://blob.yammer.jp/pepabo-intern2.jpg)  
↑サポーターのづっきーさんに助けられている姿。づっきーさんにも沢山仲良くしていただいた。そして沢山助けけていただいた。

### ファンを増やすこと

会社やサービスを好きな人が多い。(観測範囲において。) しかし会社に魅力があるだけでなく、パートナーさんにファンになってしまうような惹きつける力がある。これこそ「ファンを増やすこと」を実践されている姿だと感じた。

![スリスリくん](https://blob.yammer.jp/pepabo-intern4.jpg)  
↑インターン生が貰えるsuzuri<a id="annotation-from-5" href="#annotation-to-5">^5</a>のキャラクター「スリスリくん」のぬいぐるみ。非売品でパートナーさんも簡単には手に入れられないらしい。

### アウトプットすること

開発でGitHub Enterpriseを利用しており、issueやPullreqもアウトプットの形だと思う。
そこに過去の経緯が残されていることで、今回も開発の資料としてとても参考になった。

その他インターンシップ中に紹介された参考資料がパートナーさんが社外に公開したスライドであったことや([先程のさいきょうのPullReq](#issueとPullRequest)もその一つ)、パートナーの方が登壇する技術イベントに参加させていただいたこと等、アウトプットされているのを肌に感じた。

LT経験の浅い私のためにLTの機会を増やして頂き、インターンシップ期間中に合わせて3回発表をした。issueもPullreqも書いたし、私もパートナーさんを見習ってもっとアウトプットしていきたい。

## 感じたこと - 福岡の話

人生初の九州上陸だったが、福岡は住みやすそうな街だった。

### コンパクトシティ

空港から街が近い、というよりも街に空港があるので移動が楽。(成田空港、お前のことだぞ。<a id="annotation-from-6" href="#annotation-to-6">^6</a>)

### 食べ物が美味しい

ペパボの福岡インターンシップで、日報にご飯が美味かったと書かれるのはあるあるらしい。もちろん私も書いた。
一つ一つ紹介しているとそれだけで記事になってしまうので、写真でまとめて振り返る。

![福岡で食べたおいしいもの](https://blob.yammer.jp/pepabo-intern5.jpg)

帰りに空港でお土産をみて、明太子とごまさばを食べそびれたことに気づいた。

## まとめ

上述の通り、技術を学ぶことと会社を知ることの2側面ともに得るものが多かった。  

実は応募前は私の技術力が通用するのか不安だった。しかし、ペパボの皆さんに本当に優しく丁寧にフォローしていただいて、インターンシップ期間内に機能をリリースできた。

また同じ期間に他チームへ配属されていたインターン生にもよい刺激を受けた。特に私が新しい技術分野に触れていくモチベーションに繋がった。同年代の強い人すごい、みんなすごい(小並感)。

次は冬にも同様の就業型インターンシップを予定しているそうなので、この業界を考えてる人にぜひ勧めたい。

## おわりに

インターンシップ中に関わらせていただいたた皆さんにとてもお世話になりました。
特にサポーターのづっきーさんには技術面で沢山サポートしていただきました。初日緊張してパスワードを永遠にtypoしていたのが懐かしいです。  
本当にありがとうございました。

![集合写真](https://blob.yammer.jp/pepabo-intern1.jpg)
↑パートナーさんと我々インターン生。最高の夏。

<hr class="gt-article-annotation-horizontalrule"/>

<ul class="gt-article-annotation-list">
<li><a id="annotation-to-1" href="#annotation-from-1">^1</a>: ペパボで働く人のこと</li>
<li><a id="annotation-to-2" href="#annotation-from-2">^2</a>: 正確にはペパボ協賛の技術イベント<a href="https://builderscon.io">builderscon2019</a>の幕割CM</li>
<li><a id="annotation-to-3" href="#annotation-from-3">^3</a>: 記事中の<a href="https://www.youtube.com/watch?v=ANXs_ZdQtt4">動画</a>を参照。buildersconのコンセプトらしい。(インターンシップとbuildersconに直接の関係はない。)</li>
<li><a id="annotation-to-4" href="#annotation-from-4">^4</a>: もちろん、テストはテストコードとして書かれた動作しか保証できないので、ある程度正しい動作を保証できるようなテストを書くこと、テストで何が保証されているのかを理解しておくことが必要がある。</li>
<li><a id="annotation-to-5" href="#annotation-from-5">^5</a>: ペパボが運営するオリジナルグッズの作成・販売サービス。<a href="https://suzuri.jp">suzuri</a>。</li>
<li><a id="annotation-to-6" href="#annotation-from-6">^6</a>: さいたまに住んでいると羽田も遠い。</li>
</ul>
