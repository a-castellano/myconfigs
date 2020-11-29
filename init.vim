" pick the python path regardless of the active virtualenv
let g:python3_host_prog = '/usr/bin/python3'

" Load plugins first
runtime config/plug.vimrc

" Change leader to space
map <Space> <Leader>
let g:mapleader = "\<Space>"
nnoremap <Space> <Nop>

runtime config/nerdtree.vimrc
runtime config/airline.vimrc
runtime config/indentLine.vimrc
runtime config/deoplete.vimrc
runtime config/git.vimrc

" colorscheme
set termguicolors
set background=dark
colorscheme onedark
let g:onedark_termcolors = 256
set pumblend=20

set expandtab
set linebreak

" folding
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

set nofoldenable

" copy to clipboard
set clipboard+=unnamedplus

" search
set ignorecase
set smartcase

" substitution preview
set inccommand=nosplit

" status
set wildmode=longest:full,full
set showcmd

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" make n always search forward and N backward
nnoremap <expr> n 'Nn'[v:searchforward]
nnoremap <expr> N 'nN'[v:searchforward]

" make ; always "find" forward and , backward
nnoremap <expr> ; getcharsearch().forward ? ';' : ','
nnoremap <expr> , getcharsearch().forward ? ',' : ';'

set cursorline
set number

set splitbelow

set timeoutlen=500

let g:completion_enable_auto_popup = 0

" Prioritize git over other vcs in the gutter
let g:signify_vcs_list    = [ 'git' ]

let g:signify_sign_change = '▌'
let g:signify_sign_delete = '▌'
let g:signify_sign_add = '▌'

" numbers don't belong in these buffers
let g:numbers_exclude = ['tagbar', 'nerdtree', 'man', '-stdin-', 'Help']

" exclude fugitive from editorconfig formatting
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" clear search pattern
command C let @/=""

" Make terminal mode more natural to get out of
tnoremap <Leader><Esc> <C-\><C-n>

" hard-wrap manpages
let g:man_hardwrap = 1

" persistent undo
set undofile

" toggle visible whitespaces
set listchars=tab:→\ ,trail:~,space:·,eol:¶,extends:>,precedes:<
noremap <F10> :set list!<CR>

" workaround in order to acomplish on-demand plugin loading
let g:rooter_disable_map = 1
map <silent> <unique> <Leader>cd <Plug>RooterChangeToRootDirectory

" Open files as readonly when they're already being edited
augroup NoSimultaneousEdits
  autocmd!
  autocmd SwapExists * let v:swapchoice = 'o'
  autocmd SwapExists * echohl ErrorMsg
  autocmd SwapExists * echomsg 'File is already open in another session'
  autocmd SwapExists * echohl None
augroup END

