WORD LuaLaTeX Class
===

- Makefile
	+ `make lua`で`word-lua.cls`ができる

	+ `word-lua.pdf`の作成に時間がかかるので今は`$(YES) | $(MAKE) $(DOCUMENT`をコメントアウトしている

- word-lua.dtx *based on ltjsclasses.dtx tags/20150307.0*

	+ フォントサイズがややデカい

	+ listings.styの`\lstinputlisting`を使うとtreated as Zeroが出る

	+ 偶数頁のヘッダに日本語が入っているとびよ～んとなる
