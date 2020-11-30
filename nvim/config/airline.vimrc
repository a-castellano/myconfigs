let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
let g:airline_highlighting_cache = 1

let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline_section_z = '%#__accent_bold#%3L%#__restore__#%{g:airline_symbols.maxlinenr}%3l:%2v'

let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#nvimlsp#enabled = 1
let g:airline#extensions#whitespace#checks = [ 'mixed-indent-file', 'trailing' ]
