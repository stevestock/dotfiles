" Color
syntax enable
colorscheme desert
set background=dark

" UI
set number
set ruler
set cursorline
set scrolloff=7
set nowrap
set title

" Whitespace
set smarttab
set shiftwidth=4
"set shiftround
set tabstop=4
set autoindent
"copyindent
set smartindent

" search
set hlsearch
highlight Search ctermbg=LightYellow ctermfg=DarkGrey
highlight IncSearch cterm=underline,bold ctermfg=DarkGrey ctermbg=LightYellow
set incsearch
set ignorecase
set smartcase
set showmatch

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

set autoread

"set hidden
"set ttyfast
"set lazyredraw
"set visualbell
"set noerrorbells

"backup
set noswapfile

filetype plugin indent on
