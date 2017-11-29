
" 基本設定
source ~/.config/nvim/config.vim
" ファイルタイプごとの設定
source ~/.config/nvim/config_filetype.vim
" キーマッピング
source ~/.config/nvim/config_map.vim
" 個人的によく使うユーティリティ関数群, 設定用変数群
source ~/.config/nvim/liiu.vim

"" プラグイン管理(dein.vim)

" vimの機能有効化
if &compatible
  set nocompatible 
endif

" dein.vimの実体があるディレクトリをセット
let s:dein_repo_dir = g:liiu#dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vimが存在していない場合はgithubからclone
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

set runtimepath+=/home/leiu/.cache/dein/repos/github.com/Shougo/dein.vim 

if dein#load_state(g:liiu#dein_dir)
  call dein#begin(g:liiu#dein_dir)
  let s:toml_file = '~/.config/nvim/dein.toml'
  call dein#load_toml(s:toml_file)
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

