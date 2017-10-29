WORD Class
===

[![Build Status](https://travis-ci.org/WORD-COINS/texfiles.svg?branch=master)](https://travis-ci.org/WORD-COINS/texfiles)
[![Build status](https://ci.appveyor.com/api/projects/status/12vr1y6pdxs2av2v?svg=true)](https://ci.appveyor.com/project/y-yu/texfiles)

## about source code

- Makefile
	+ `make`で`word.cls`と`word.pdf`ができる
- word.dtx
    + A class extended bxjsarticle for WORD-coins.

## word.cls

- オプション
	+ `\authormark{hoge}`で、著者名前の「文 編集部」を編集できる。
	+ `evenstart`オプションで、ヘッダの位置を入れ替えられる。記事が偶数ページから始まる時に便利。
    + `draft`オプションで、ヘッダにページ番号を付与する。画像を読み込む時はgraphicxにも、draftオプションを付ける。
	+ `\articleheader`が従来の`\subtitle`の代わりとして登場した。`\subtitle`は互換のために保持。
    + `\articleheader{hoge}`をプリアンブルに入れるとヘッダに`hoge`が入る。
    + `\articleheader{fuga}`を文章中に入れると、そのページからヘッダが`fuga`に変更される。

# ライセンス

License: modified BSD (see LICENSE)
