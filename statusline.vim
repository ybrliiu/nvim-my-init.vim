" ステータスラインの設定
" プラグインに依存しているのでdeinを読み込んだ後に読み込むこと

set statusline=%<     " 行が長すぎるときに切り詰める位置
set statusline+=[%n]  " バッファ番号
set statusline+=\ 
set statusline+=%m    " %m 修正フラグ
set statusline+=%r    " %r 読み込み専用フラグ
set statusline+=%h    " %h ヘルプバッファフラグ
set statusline+=%w    " %w プレビューウィンドウフラグ
set statusline+=\ 
set statusline+=%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}  " fencとffを表示
set statusline+=\ 
set statusline+=%y    " バッファ内のファイルのタイプ
set statusline+=\     " 空白スペース
set statusline+=%{fugitive#statusline()}  " Gitのブランチ名を表示
set statusline+=\     " 空白スペース
if winwidth(0) >= 130
  set statusline+=%F    " バッファ内のファイルのフルパス
else
  set statusline+=%t    " ファイル名のみ
endif
set statusline+=%=    " 左寄せ項目と右寄せ項目の区切り
set statusline+=\ 
set statusline+=%2l   " 何行目にカーソルがあるか
set statusline+=/
set statusline+=%2L   " バッファ内の総行数
set statusline+=\(%p\%%\) " ファイル内の何％の位置にあるか
set statusline+=,
set statusline+=\     
set statusline+=%c   " 何列目にカーソルがあるか
set statusline+=\     

