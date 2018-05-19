"" 基本設定

" カーソル行をハイライト
set cursorline
" 検索結果をハイライト
set hlsearch
" カーソル位置の行数と列を表示
set ruler
" 行数を表示
set number
" swapファイルを作成しない
set noswapfile
" windowのタイトルを変更
set title
" :b でバッファ切り替えの際に編集中ファイルを保存しなくてもokにする
set hidden   
" 256色使用
set t_Co=256
set termguicolors
" escape delay 
set ttimeoutlen=10
" mouseでの操作を許可
set mouse=a

" コメント行改行時に, 下の行もコメントの続きにしない設定
augroup auto_comment_off
	autocmd!
	autocmd BufEnter * setlocal formatoptions-=r
	autocmd BufEnter * setlocal formatoptions-=o
augroup END

"" インデントの設定

" タブ入力を複数の空白入力に置き換える
set expandtab     
" 画面上でタブ文字が占める幅
set tabstop=2     
" 自動インデントでずれる幅
set shiftwidth=2  
" 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set softtabstop=2 
" 改行時に前の行のインデントを継続する
set autoindent    
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent   

" statusline
" ステータスラインの表示
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

