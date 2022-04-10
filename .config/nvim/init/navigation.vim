" Netrw {{{1

" Appearence
let g:netrw_banner = 0

" Where to open files
let g:netrw_alto = 0 " horizontal window (above)
let g:netrw_altv = 1 " vertical window (right)
let g:netrw_preview = 1 " preview window (vertical)

" Project drawer like NERDTree (Lexplore)
let g:netrw_usetab = 1
let g:netrw_wiw = 1
nmap <unique> <leader>n <Plug>NetrwShrink

" Colors
let g:netrw_special_syntax = 1
"  hi netrwR	  term=NONE cterm=NONE gui=NONE ctermfg=9 guifg=blue ctermbg=0 guibg=black

" Line numbering
let g:netrw_bufsettings="noma nomod nonu nobl nowrap ro rnu"

" Vim-bufsurf {{{1

nmap <BS> <Plug>(buf-surf-back)
nmap <F2> <Plug>(buf-surf-forward)

