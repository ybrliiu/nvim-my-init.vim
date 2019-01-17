" コメント行改行時に, 下の行もコメントの続きにしない設定
setlocal formatoptions-=o
setlocal formatoptions-=r

setlocal path+=lib
setlocal path+=extlib
setlocal path+=t/lib
setlocal path+=local/lib/perl5

" 画面上でタブ文字が占める幅
setlocal tabstop=4
" 自動インデントでずれる幅
setlocal shiftwidth=4
" 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
setlocal softtabstop=4

" コード折りたたみいらねえ
setlocal foldmethod=manual
