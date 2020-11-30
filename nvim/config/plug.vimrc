call plug#begin('~/.config/nvim/plugged')

" Code formater

Plug 'sbdchd/neoformat'

" Themes

Plug 'joshdick/onedark.vim'


" File explorer

Plug 'scrooloose/nerdtree'

" Airline

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Line ident, because you know... I Love Python....

Plug 'Yggdroot/indentLine'

" Autocomplete

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-syntax'
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}

Plug 'ervandew/supertab'

Plug 'Shougo/echodoc.vim'

" Static annalysis

Plug 'w0rp/ale'

" Syntax

Plug 'sheerun/vim-polyglot'

Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'vim-jp/vim-cpp'
Plug 'pearofducks/ansible-vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'tpope/vim-git'
Plug 'fszymanski/fzf-gitignore', { 'for': 'gitignore' }
Plug 'fatih/vim-go'
Plug 'towolf/vim-helm'
Plug 'b4b4r07/vim-hcl'
Plug 'vito-c/jq.vim'
Plug 'elzr/vim-json'
Plug 'tbastos/vim-lua'
Plug 'chr4/nginx.vim'
Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }
Plug 'vim-python/python-syntax'
Plug 'vim-ruby/vim-ruby'
Plug 'rust-lang/rust.vim'
Plug 'arzg/vim-sh'
Plug 'cespare/vim-toml'
Plug 'wgwoods/vim-systemd-syntax'
Plug 'smerrill/vcl-vim-plugin'

Plug 'airblade/vim-gitgutter'

" Nerdtree + git
Plug 'xuyuanp/nerdtree-git-plugin'

call plug#end()
