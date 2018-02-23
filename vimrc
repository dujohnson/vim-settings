"Author: Dustin Johnson
" Personal VIM configuration settings

" Setup Pathogen
" execute pathogen#infect()
call pathogen#infect()

" Not compatible with VI.  Enables many VIM features
set nocompatible
" Line folding
set sw=4
set foldmethod=indent
set foldlevel=0
set foldnestmax=2

" Set my Color Scheme
" set background=dark
colorscheme distinguished

" Show what I am typing as a command
set showcmd

" Syntax highlighting and related
syntax on 
syntax enable
"filetype plugin indent on
filetype plugin indent on


"Auto indent
"set autoindent

" Shortcut to turn off autoindent
:nnoremap <F8> :setl noai nocin nosi inde=<CR>

" Autocompletion related
set wildmenu
set wildmode=list:longest,full

autocmd FileType css set omnifunc=csscomplete#CompleteCSS



" Line numbers
set number

" Smartcase
set smartcase

" Use jj to escape insert mode instead of esc
inoremap jj <Esc>

" Search related configs...
set incsearch
set hlsearch

" Remove buffer when I close a tab
set  nohidden

" Tab mappings
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" Resize buffer
map > :vertical res+1
map < :vertical res-1

function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:set dictionary="/usr/dict/words"

au BufWinLeave * mkview
au BufWinEnter * silent loadview

" Shade text longer than 78 characters
":match ErrorMsg '\%>79v.\+'
:au BufWinEnter * let w:m1=matchadd('Search', '\%<80v.\%>76v', -1)
:au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>79v.\+', -1)
set ruler
