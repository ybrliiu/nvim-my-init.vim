"" 個人的によく使うユーティリティ関数群, 設定用変数群

" vim設定ファイルのあるディレクトリ
let g:liiu#vim_dir = expand('~/.config/nvim')

" dein.vimインストール時に指定したディレクトリをセット
let g:liiu#dein_dir = expand('~/.cache/dein')

function! liiu#yank_github_link()
  let @+ = liiu#github_link()
  let @0 = liiu#github_link()
endfunction

function! liiu#github_link()
  let l:line             = line('.')
  let l:filename         = expand('%')
  let l:head_commit_hash = liiu#chomp( system('git log -n1 --pretty=%H') )
  let l:param            = l:head_commit_hash . '/' . l:filename . '#L' . l:line
  return 'https://github.com/' . liiu#github_repository_uri() . '/blob/' . l:param
endfunction

function! liiu#github_repository_uri()
  let l:remote_url      = liiu#chomp( system('git remote get-url origin') )
  let l:repository_name = matchlist(l:remote_url, '\v^git\@github\.com:(.{-1,})\.git$')
  return l:repository_name[1]
endfunction

function! liiu#chomp(string)
  return substitute(a:string, '\n\+$', '', '')
endfunction
