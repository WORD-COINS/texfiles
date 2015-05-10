WORD LuaLaTeX Class
===

## probrem
- 偶数頁のヘッダに日本語が入っていると日本語だけ文字間が異常に広がる

- `listings`
	+ `\lstinputlisting`でオプションに`title=...`を渡すと*Missing number, treated as Zero*が出る

	+ caption内で`\small`すると*Undefined control sequence* `\small ...hortskip \belowdisplayskip \def \@listi`が出る


## about source code

- Makefile
	+ `make lua`で`word-lua.cls`ができる

	+ `word-lua.pdf`の作成に時間がかかるので今は`$(YES) | $(MAKE) $(DOCUMENT)`をコメントアウトしている

- word-lua.dtx *based on ltjsclasses.dtx tags/20150307.0*

## word.clsとの変更点

- 文と次の見出しの間
	+ ｢狭い｣という意見がたまにあり､暫定的に`\section`では3`\zw`､`\subsection`では`2\zw`､`\subsubsection`では`1\zw`広げた｡