" filetype ごとの設定

augroup auto_comment_off
  autocmd!

  " perl関連
  autocmd BufNewFile,BufRead *.psgi   set filetype=perl
  autocmd BufNewFile,BufRead *.t      set filetype=perl
  autocmd BufNewFile,BufRead *.cgi    set filetype=perl
  autocmd BufNewFile,BufRead *.conf   set filetype=perl
  autocmd BufNewFile,BufRead cpanfile set filetype=perl

  " template toolkit 2
  autocmd BufRead,BufNewFile *.html set filetype=tt2html

  " rubyのための設定
  autocmd BufNewFile,BufRead *.html.erb set filetype=eruby.html

  " htmlのための設定
  autocmd BufNewFile,BufRead *.html.ep  set filetype=eruby.html

  " vue
  autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

  " coffee 
  autocmd BufRead,BufNewFile *.coffee setlocal filetype=coffee

augroup END
