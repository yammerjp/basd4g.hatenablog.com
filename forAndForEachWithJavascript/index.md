---
title: Javascriptにおける、forとforEachの比較
date: 2020/01/14 18:23
tags: javascript es6
---

知人に質問された内容への回答を兼ねて、Javascriptにおける繰り返し文の記法を振り返る。

この記事では、同じ結果を出力する繰り返し文を、次の２つの文法で記述し比較する。
- [for文](https://developer.mozilla.org/ja/docs/Web/JavaScript/Reference/Statements/for)
- [forEach()メソッド](https://developer.mozilla.org/ja/docs/Web/JavaScript/Reference/Global_Objects/Array/forEach)

他の記法には言及しない。

## 配列の要素を出力する

for文と同様に、forEach()メソッドも繰り返し処理をすることができる。

しかし、記述方法は異なり、forEach()は、配列のメソッドである。
引数にはコールバック関数(今回はitemを引数とするアロー関数)を渡す、

すると、渡されたコールバック関数を、配列の各要素に対し実行することで、繰り返し処理が実現できる。

```js
// for文で要素を羅列
const items = [ "hello", 32, true ];

for( let i=0; i< items.length; i++ ){
  console.log( items[i] );
}
```

```js
// forEach()メソッドで要素を羅列
const items = [ "hello", 32, true ];

items.forEach( item => {
  console.log(item);
});
```

上記２つの実行結果は一致し、以下を出力する。

```
hello
32
true
```

## 配列の添字と配列の要素を出力する

forEach()メソッドにわたすコールバック関数で、配列の要素だけでなく添字も受け取る方法を示す。

```js
const items = [ "hello", 32, true ];

for( let i=0; i<items.length; i++ ){
  console.log(`${i} : ${items[i]}`);
}
```

```js
const items = [ "hello", 32, true ];

items.forEach( (item, index) => {
  console.log(`${index} : ${item}`);
})
```

上記２つの実行結果は一致し、以下を出力する。

```
0 : hello
1 : 32
2 : true
```

上記のように、forEach()メソッドに渡すコールバック関数の、第一引数は配列の要素、第二引数は配列の添字を受け取るようになっている。

補足: console.log内で定義している文字列は[テンプレートリテラル](https://developer.mozilla.org/ja/docs/Web/JavaScript/Reference/template_strings)を利用し、変数の値を埋め込んだ文字列をつくっている。

## まとめ

for文もforEach()メソッドも繰り返し処理を表記できるが、forEach()メソッドのほうが簡潔に表記できるので、ES6が認められる環境であれば、forEach()メソッドを使うのが好ましい。

ちなみに、forEach()メソッドだけでなく、filter()メソッドやfind()メソッド、map()メソッド等が使える場合は、こちらのほうが更に簡潔に書けるため好ましい。

その他、[for...in](https://developer.mozilla.org/ja/docs/Web/JavaScript/Reference/Statements/for...in)文や[for...of](https://developer.mozilla.org/ja/docs/Web/JavaScript/Reference/Statements/for...of)文もあるが、ここでは言及しない。

## 参照

ソースコードをおいてあるgistリポジトリ: [https://gist.github.com/basd4g/546dd9e378f93f6c24b8c8abab6fe187](https://gist.github.com/basd4g/546dd9e378f93f6c24b8c8abab6fe187)
