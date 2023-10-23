---
title: 💻M1 MacBook Airを2023に手に入れた！
header-includes:
- \usepackage[whole]{bxcjkjatype}
	<meta charset="utf-8"/>
	<title>M1 MacBook Airを2023に手に入れた</title>

---

2023年になり、とっくにM2も出ていますが、M1のMacBook Airを買いました。

理由は

* 値段が安い
* スピーカーが良さそう

意外と理由はこんなもんだった。
実際に、値段は18万。スピーカーはこの小ささから想像できないくらいステレオがしっかりしててびっくりした。

今回のアップグレードは

>　MacBook mid 2017　→　M1　MacBook Air

となっており、前使っていたMacBookは6年間添い遂げた

* これまで使っていたMacBookとは比べ物にならないくらいすべての動作が軽い、速い！
* ただ筐体はデカい分ちょい重め。これまで片手でひょいひょい持ち上げていた感覚だと危ない
画面が大きくなったので作業が圧倒的に快適
* 発熱が本当に無い。すごすぎる。膝の上に載せても大丈夫なんか！
* キーボードの感触が良すぎる。Thinkpadで感じるアレ。

なんというか感動の要素が大きすぎて、多少だめなところがあっても目を瞑ってしまうレベル

旧MacBookはトリプルブートしており、macOS + Arch Linux + Windows 10という超イキリセットアップだった。

ただ、Windowsは論外で必要なとき以外使わなく、Archも悪くわなかったが、タイリングWMが必須、かつ、トラックパッドが使いにくいという始末で、最終的にmacOSを使うことになってしまっていた。

Linuxはいじくり回すのは楽しいのだが、それが目的になってしまって、実際に何かを生み出そうという気にならない。いわゆる環境を整えて気持ちよくなってしまう病にかかってしまう。

なので、今回MacBookという脳死で極上の端末を手に入れたことにより、私の生産性が少しでも向上することを期待している。

この文章はもちろんM1で書いているんだけど、やっぱこのキーボード最高にうち心地も音もいいな！！

# セットアップの流れ

1. Install Firefox
	1. Install uBlock Origin
	1. Install Account Containers
1. Install Xcode
1. Install Homebrew
[homebrew](https://docs.brew.sh/Installation)
1. Install Kitty
`brew install --cask kitty`
1. SSH鍵生成
`ssh key-gen`

とりあえず、これはやらなくちゃ始まらない。
作成できたら、忘れずにGitHub等に公開鍵を登録する。

1. Install 'vim'
`brew install vim`
1. Install 'ranger'
`brew install ranger`
In ranger, I'd recommend doing:
 `set colorscheme solarized`
 `set draw_borders true`
 so it will look prettier.

1. Register git email address 
`git config --global user.email "youremail@yourdomain.com"`
So whenever you commit to GitHub, they will count as your contributes.

1. Install CyberDuck for easier fiile transfer over sftp

1. Install Google 日本語入力

[Google IME](https://www.google.co.jp/ime/)

