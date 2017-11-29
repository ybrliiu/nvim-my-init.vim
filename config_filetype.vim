" filetype ごとの設定

augroup auto_comment_off
  autocmd!

  " perl関連
  autocmd BufNewFile,BufRead *.psgi   set filetype=perl
  autocmd BufNewFile,BufRead *.t      set filetype=perl
  autocmd BufNewFile,BufRead *.cgi    set filetype=perl
  autocmd BufNewFile,BufRead *.conf   set filetype=perl
  autocmd BufNewFile,BufRead cpanfile set filetype=perl

 " rubyのための設定
  autocmd BufNewFile,BufRead *.html.erb set filetype=eruby.html

  " htmlのための設定
  autocmd BufNewFile,BufRead *.html.ep  set filetype=eruby.html

augroup END
