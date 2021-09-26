colorscheme morning
syntax on
set cursorline
" set cursorcolumn
set number
" set relativenumber
set spell spelllang=en_us
set noswapfile
set scrolloff=8
set colorcolumn=80
set signcolumn=yes
set wildmode=full
set splitright
set splitbelow
" IDENTATION
set tabstop=4
set shiftwidth=2
set autoindent
set smartindent
" Fold by indent
" set foldmethod=syntax
" Detach from Vi
set nocompatible
" enable syntax and plugins (for netrw)
syntax enable
filetype plugin on
filetype plugin indent on
" Support to CSS autocomplete
set omnifunc=syntaxcomplete#CompleteCSS
" Support to html  autocomplete
set omnifunc=htmlcomplete#CompleteTags

" Visual indicator for insert mode
au InsertEnter * colors default
au InsertLeave * colors morning

" FINDING FILES
" Search down to subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" THINGS TO CONSIDER
" :b lets you autocomplete any open buffer

" inoremap kj <Esc>
" inoremap KJ <Esc>

"""" 2. Key Bindings.
" More convenient movement when lines are wrapped.
nmap j gj
nmap k gk

" Search settings
set hlsearch " hilight
set incsearch " jump to best fit
 " Turn off seach hilighting with <CR>.
nnoremap <CR> :nohlsearch<CR><CR>

" Make statusline appear even with only single window.
set laststatus=2

" For using assembly files
let g:asmsyntax = 'nasm64'

nnoremap <F2> :sh<CR>


" **********************************
" ***********  PLUGINS  ************
" **********************************
let g:rustfmt_autosave = 1

" let g:ale_linters = {'rust': ['analyzer']}



syntax enable
filetype plugin indent on

autocmd BufNewFile,BufRead *.rs set filetype=rust

let g:ale_linters = {
\  'rust': ['analyzer'],
\}

let g:ale_fixers = { 'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'] }

" Optional, configure as-you-type completions
set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1

" Use C-o to go back to the document
nnoremap <SPACE> :ALEGoToDefinition<CR>



let g:ale_rust_rls_config = {
  	\ 'rust': {
  		\ 'all_targets': 1,
  		\ 'build_on_save': 1,
  		\ 'clippy_preference': 'on'
  	\ }
  	\ }
  let g:ale_rust_rls_toolchain = ''
  let g:ale_rust_rls_executable = 'rust-analyzer'
  let g:ale_linters = {
      \ 'rust': ['rls']
      \ }
  let g:ale_fixers = {
      \ 'rust': ['rustfmt']
      \ }


" *******************************
" ***********  PLUG  ************
" *******************************

" Specify a directory for plugins
"call plug#begin('~/.vim/plugged')

"Plug 'mattn/emmet-vim'


"Plug 'frazrepo/vim-rainbow'
"let g:rainbow_active = 1

"Plug 'niftylettuce/vim-jinja'
"au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm set ft=jinja

" Initialize plugin system
"call plug#end()

" Emmet shorcuts
"let g:user_emmet_mode='n' " If you want to work only in normal mode
"let g:user_emmet_leader_key=','

" Put these lines at the very end of your vimrc file.

" PLUGINS
" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

set mouse=a
