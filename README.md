WORD Class
===

[![Build Status](https://travis-ci.org/WORD-COINS/texfiles.svg?branch=master)](https://travis-ci.org/WORD-COINS/texfiles)
[![Build status](https://ci.appveyor.com/api/projects/status/12vr1y6pdxs2av2v?svg=true)](https://ci.appveyor.com/project/y-yu/texfiles)

## about source code

- Makefile
	+ `make`で`word.cls`､`word.clo`ができる
	+ `make lua`で`word-lua.cls`ができる
	+ `make doc`で`word.cls`のドキュメントが生成される｡`make doc-lua`で`word-lua.cls`のドキュメントが

- word-lua.dtx *based on ltjsclasses.dtx tags/20150307.0*

## word.clsとword-lua.cls

- 文と次の見出しの間
	+ `\section`では3`\zw`､`\subsection`では`2\zw`､`\subsubsection`では`1\zw`､`word-lua.cls`のほうが***広い***｡

- word-luaのみの機能
	+ `\authormark{hoge}`で、著者名前の「文 編集部」を編集できる。
	+ `swapheader`オプションで、ヘッダの位置を入れ替えられる。記事が偶数ページから始まる時に便利。

# ライセンス

License: modified BSD (see LICENSE)
