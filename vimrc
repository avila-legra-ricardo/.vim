autocmd QuickFixCmdPost * :cw
set expandtab
set relativenumber
set number

"Use <Tab> key when expanding abbreviation on your Vim using Emmet.vim
let g:user_emmet_expandabbr_key='<Tab>'
"Use of TAB key for indentation also
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

autocmd FileType java set tags=tags
colorscheme default
set rnu
" Activate mouse
 set mouse=a
" Don't pretend to be vi
 set nocompatible
" " Turn on syntax highlighting
 syntax on
" " Indicate that we want to detect filetypes and want to run filetype  plugins.
 filetype plugin on
" Enabling smart indent
 filetype indent on

set shiftwidth=4
set tabstop=4
set smartindent
set foldmethod=syntax

let mapleader=","

set makeprg=javac 

"Mapings
nnoremap <leader>v :vnew<CR>
nnoremap <leader>n :new<CR>
map <leader>i :TlistToggle<CR>
map <leader>e :NERDTreeToggle<CR>
"map <leader>r :wa<CR>:!javac % && java %:p:t:r 
map <leader>b :!clear<CR>:w \| make % <CR> 
"""map <leader>r :wa\|silent !clear %% javac % && clear && java %:p:t:r && read<CR>:redraw!<CR>
"map <leader>r :execute 'silent !xterm -hold -e "java %:p:t:r" &'\|:execute ':redraw!' <CR> 
map <leader>r :execute 'silent !xfce4-terminal --hide-menubar --geometry 140x20+300+650 -H -e "java %:p:t:r" &'\|:execute ':redraw!' <CR> 
"map <leader>r :wa\|!javac $mainPath && clear && java $main && read<CR> 
map <leader>t :wa\|!javac % && java org.junit.runner.JUnitCore %:p:t:r<CR>
map <leader>c :cclose<CR>
map <c-s> :w<CR>

"Fold toggle using mouse 
noremap <2-LeftMouse> za
"Busqueda incremental
set incsearch
"Destaca las concordancias de búsqueda
set hlsearch
"Atajo para salvar
map <C-s> :w<CR>
" Autorefresh modified files
set autoread
" Hacer debugger en geany
nmap <F12> :!echo %:p \| xargs geany<CR>
set noignorecase
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

syntax enable
