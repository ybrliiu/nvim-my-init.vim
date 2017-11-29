"" マッピング設定

" Perltidy visual -> ,ptidy で整形
map ,ptidy :'<,'>! perltidy

" k <=> j 入れ替え
nnoremap j k
nnoremap k j
vnoremap j k
vnoremap k j

" Ctrl + a = ESC
nnoremap <C-a> <ESC>
inoremap <C-a> <ESC>
vnoremap <C-a> <ESC>
