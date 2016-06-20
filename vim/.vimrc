set nocompatible              
filetype off                  

set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

set autoindent
set smartindent
autocmd BufNewFile,BufRead *.cpp set tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.c   set tabstop=4 softtabstop=4 shiftwidth=4

autocmd BufNewFile,BufRead *.py set tabstop=2 softtabstop=2 shiftwidth=2

autocmd BufNewFile,BufRead *.cpp set colorcolumn=160 textwidth=160
autocmd BufNewFile,BufRead *.c   set colorcolumn=100  textwidth=100

set background=dark
colorscheme PaperColor

syntax on

set number
set showmatch
set comments=sl:/*,mb:\ *,elx:\ */

set foldmethod=marker
set foldmarker={,}
set foldlevel=0
set foldclose=all

set visualbell
set t_vb=

" Enhanced keyboard mappings

nmap <F2> :w<CR>
imap <F2> <ESC>:w<CR>i
nmap <F3> :StripWhitespace<CR>
imap <F3> <ESC>:StripWhitespace<CR>i
autocmd BufNewFile,BufRead *cpp map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
autocmd BufNewFile,BufRead *.c map <F4> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <F7> :make<CR>
map <S-F7> :make clean all<CR>
map <F12> <C-]>

map <C-K> :pyf /usr/share/vim/addons/syntax/clang-format.py<cr>
imap <C-K> <c-o>:pyf /usr/share/vim/addons/syntax/clang-format.py<cr>

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif


let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline_theme = 'molokai'

let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']



set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/nerdtree'
Bundle 'Xuyuanp/nerdtree-git-plugin'
Bundle 'vim-scripts/Conque-GDB'
Bundle 'oplatek/Conque-Shell'
Bundle 'ntpeters/vim-better-whitespace'
Bundle 'klen/python-mode'

Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle 'honza/vim-snippets'


Plugin 'NLKNguyen/papercolor-theme'

filetype plugin indent on
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" NERDTree configuration
" autocmd vimenter * NERDTree

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

