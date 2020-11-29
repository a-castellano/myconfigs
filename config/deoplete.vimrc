" use deoplete with tabs
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
let g:deoplete#enable_at_startup = 1

let g:deoplete#delimiters = ['/', '.', '::', ':', '#', '>']

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" close the preview window after completion is done.
autocmd CompleteDone * silent! pclose!

" Avoid showing message extra message when using completion
set shortmess+=c

let g:SuperTabDefaultCompletionType = '<c-n>'

set noshowmode 

let g:echodoc_enable_at_startup = 1
