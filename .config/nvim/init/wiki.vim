let g:wiki_root = '~/documents/organizer'
let g:wiki_filetypes = ['md', 'Rmd', 'Rmarkdown']

let g:wiki_mappings_use_defaults = 'global'
let g:wiki_mappings_local = {
      \ '<plug>(wiki-link-next)' : '<tab>',
      \ '<plug>(wiki-link-follow)' : '<cr>',
      \ '<plug>(wiki-link-follow-split)' : '<c-cr>',
      \}

let g:wiki_journal = {
    \ 'name': 'journal',
    \ 'frequency': 'monthly',
    \ 'date_format': {
    \   'monthly' : '%Y-%m',
    \ },
    \}
