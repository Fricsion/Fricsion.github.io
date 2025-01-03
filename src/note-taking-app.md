---
title: メモアプリ困窮問題
author: 松村太貴
updated: 2024-12-18
created: 2024-12-24
header-includes:
- \usepackage[whole]{bxcjkjatype}
	<meta charset="utf-8"/>
	<meta name="fediverse:creator" content="@mazm@mastodon.social">
	<title>メモアプリ困窮問題</title>

---

2024年も終わりかけている。思っているように進歩しないのが、私のメモアプリ問題である。

## 事の発端
昔から、いろいろなメモアプリを行ったり来たり適当に生きてきた私だった。
ただ、最近の生成AIの進歩が著しく、自分の知識やデータはテキストとして保存することの価値が上がった。
本気でメモに特化しようとするも、意外と出会えない理想のアプリ。

## こだわり(思想)が邪魔する先
FOSS信仰心の強い私だったが、生産性を優先し、何度か魂を売っている。
例えば、Obsidian, Notionあたりは有名かつプロプライエタリなメモアプリの筆頭だろう(人によっては、メモアプリよりもっと高度なものだろうが)

Notionはオンラインでしか使えないというのと、データオーナーシップを真に考えた時にはやはりそれから脱出したいという衝動に駆られていた。PIIになりうるものや、APIキーなどを間違ってペーストしてしまっても、割となんとかなるような基盤が必要だった。

厳密にはObsidianはデータオーナーシップは自分自身にあるが、それを複数の端末間で同期する手法が限られている。

その後、Notesnookというなかなかに信頼の置ける如何にもプライバシー狂信者のためのアプリを試していた時期もあったが、当時サーバー技術がプロプラだったため、結局脱出を決心した。

## そして出会うJoplin・・・と、その不完全さのジレンマ
そして現在利用するに至っているのがJoplin。だが、最初に言おう、満足はしていない。
なにかと、機能的には満たされているJoplin。特にお気に入りの機能を以下に列挙しておこう。

* マークダウンで書ける(人権)
* PDFとして出力できる(人権) → 大学の課題作成にも対応できる
* プラグインを使えばスライド出力もできる
* Webサイトとして公開することができる
* 同期サーバーをセルフホストできる(人権)
	* 同期メッチャ早い
* メモたちを暗号化した状態で同期できる → サーバーの所在は問わなくなるので素敵

でもやっぱり悪い点も結構ある

* ファイル・ディレクトリ構造がObfscutedなので、例えばVimとかでシンプルにマークダウンファイルにアクセス・編集できない ← 暗号化とはトレードオフな感じはあるけどね
* クライアントがデスクトップ・モバイルともにもう一息ほしい
	* 見た目がモダンでない
	* アプリ自体のサイズがでかい。

* タグの検索関連が不完全: 複数タグで絞り込みとかもできない
	* モバイル版なんてかなりひどい
* アプリの利用が必須なのが絶妙。Webクライアントがほしい


## 今後の展望
正直、かなりJoplinにフルコミットしているので、しばらくは変わらない予定である。
しかし、興味深い代替FOSSアプリも存在自体は認識しているので以下に記す

* Logseq
	* 同期がWebdav依存だとすると遅さによるコンフリクトが心配
		* セルフホスト可能な同期サーバーはなさそう+計画も乏しそう(https://discuss.logseq.com/t/will-logseq-remain-fully-open-source-in-the-future-and-will-the-synchronization-feature-be-self-hostable/11951/5)
	* 結構、使用感が独特

## 感想
メモアプリ一つとっても、意外と難しいんだなと思った。
正直、人それぞれ求めているものや思想が違うので、既存のアプリと考え方が合致しないとナレッジベースを育てていくのは苦しい時代だ。
ただ、今回この記事を書いていて、意外とJoplinは愛すべき存在なのかもしれないと思い、今後の改善を説に望む一方だ。とにかく、クライアント群がもうちょっと良くなるだけでかなり変わるだろう。
