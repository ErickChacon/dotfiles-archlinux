" File: init.vim
" Author: Erick A. Chacón Montalván
" Description: Neovim settings
" Last Modified: January 22, 2022


" minimal
lua require('user.plugins')
so ~/.config/nvim/init/config.vim
so ~/.config/nvim/init/folding.vim

" aesthetics
so ~/.config/nvim/init/colors.vim
so ~/.config/nvim/init/statusline.vim
so ~/.config/nvim/init/whitespace.vim

" ide features
so ~/.config/nvim/init/navigation.vim
" so ~/.config/nvim/init/languageserver.vim
lua require('user.completion')
so ~/.config/nvim/init/repl.vim
so ~/.config/nvim/init/telescope.vim

" " languages
" so ~/.config/nvim/init/r.vim
" so ~/.config/nvim/init/markdown.vim

" others
" so ~/.config/nvim/init/easyalign.vim
" so ~/.config/nvim/init/wiki.vim
