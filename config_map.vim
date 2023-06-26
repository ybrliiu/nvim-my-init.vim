"" マッピング設定

" Perltidy visual -> ,ptidy で整形
map ,ptidy :'<,'>! perltidy

nnoremap い i

" k <=> j 入れ替え
nnoremap j k
nnoremap k j
vnoremap j k
vnoremap k j

" Ctrl + a = ESC
nnoremap <C-a> <ESC>
inoremap <C-a> <ESC>
vnoremap <C-a> <ESC>

" for neosnippet
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" ターミナルモードでESCを押したらノーマルモードにもどる
tnoremap <Esc> <C-\><C-n>
