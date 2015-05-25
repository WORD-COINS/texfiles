WORD LuaLaTeX Class
===

## probrem
生成物はともかく､word-lua.dtxがめちゃくちゃ雑で汚い｡


## about source code

- Makefile
	+ `make lua`で`word-lua.cls`ができる

	+ `word-lua.pdf`の作成に時間がかかるので今は`$(YES) | $(MAKE) $(DOCUMENT)`をコメントアウトしている

- word-lua.dtx *based on ltjsclasses.dtx tags/20150307.0*

## word.clsとの変更点

- 文と次の見出しの間
	+ ｢狭い｣という意見がたまにあり､暫定的に`\section`では3`\zw`､`\subsection`では`2\zw`､`\subsubsection`では`1\zw`広げた｡

## TODO
あらかじめluatexja-fontspecなどを読み込んで､word.clsとフォントのあたりを寄せたい｡

ヒラギノ角ゴを持っている人にお願いしたい｡