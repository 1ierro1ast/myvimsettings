set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'grvcoelho/vim-javascript-snippets'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'frazrepo/vim-rainbow'
Plugin 'jiangmiao/auto-pairs'

call vundle#end()
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set number

"colorscheme hybrid_material"
colorscheme dracula

"vim-javascript configures"
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

"snipmate configures"
let g:snipMate = { 'snippet_version' : 1 }
imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger

"vim-rainbow configures"
au FileType c,cpp,objc,objcpp call rainbow#load()
let g:rainbow_active = 1

"auto-pairs configures"
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'
