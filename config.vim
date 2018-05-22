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

