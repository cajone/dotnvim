
" All plugins go in this block {
  call plug#begin()
    " Must Have
    Plug 'https://github.com/vimwiki/vimwiki'
    Plug 'https://github.com/fatih/vim-go'
    Plug 'https://github.com/rafi/awesome-vim-colorschemes'
    Plug 'https://github.com/vim-airline/vim-airline'
    Plug 'https://github.com/vim-airline/vim-airline-themes'
    Plug 'https://github.com/cohama/agit.vim'

    " Under evaluation
    Plug 'https://github.com/ms-jpq/coq_nvim'
    Plug 'https://github.com/neovim/nvim-lspconfig'
  call plug#end()
"}

" Plugin Configuration
  " Airline Theme
      let g:airline_theme='base16_summerfruit'
      set laststatus=2 					    " Get instant feeback from airline
      let g:airline#extensions#tagbar#enabled = 1

  " LSPconfig
  "  local lsp = require "lspconfig"
  "  local coq = require "coq"

  " Vim-go
  " call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })

  " VimWiki
    let g:vimwiki_list = [{'path': '~/vimwiki/',
                          \ 'syntax': 'markdown', 'ext': '.md'}]

    let g:vimwiki_auto_chdir = 1
    let g:vimwiki_conceallevel = 0

    augroup vimwiki
      autocmd BufWritePost ~/vimwiki/* !git add "%";git commit -m "Auto commit of %:t." "%"
    augroup END




" User defined functions

  " Toggle numbers
  function! Togglelinenumbers()
     set relativenumber!
     set number!
  endfunction



" Leader Key
  let mapleader='\'

" Colour Scheme
  colorscheme jellybeans

" Formatting {

  set nowrap                          " Do not wrap long lines
  set autoindent                  		" Indent at the same level of the previous line
  set shiftwidth=2                		" Use indents of 2 spaces
  set expandtab                   		" Tabs are spaces, not tabs
  set tabstop=2                   		" An indentation every four columns
  set softtabstop=2               		" Let backspace delete indent
  set nojoinspaces                		" Prevents inserting two spaces after punctuation on a join (J)
  set splitright                  		" Puts new vsplit windows to the right of the current
  set splitbelow                  		" Puts new split windows to the bottom of the current

  set undofile                    		" Maintain undo history between sessions
  set undodir=~/.config/nvim/undodir  " used to store undo history files
  set backspace=indent,eol,start  		" Backspace for dummies
  set linespace=0                 		" No extra spaces between rows

  set number                      		" Line numbers on
  set relativenumber                  " Set relative numbers on
  highlight LineNr ctermfg=green  " Change line number color to green

  set showmatch                   		" Show matching brackets/parenthesis
  set incsearch                   		" Find as you type search
  set hlsearch                    		" Highlight search terms
  set winminheight=0              		" Windows can be 0 line high
  set ignorecase                  		" Case insensitive search
  set smartcase                   		" Case sensitive when uc present
  set wildmenu                    		" Show list instead of just completing
  set wildmode=list:longest,full  		" Command <Tab> completion, list matches, then longest common part, then all.
  set whichwrap=b,s,h,l,<,>,[,]   		" Backspace and cursor keys wrap too
  set scrolljump=5                		" Lines to scroll when cursor leaves screen
  set scrolloff=3                 		" Minimum lines to keep above and below cursor
  set shell=/usr/bin/zsh          		" change the :! shell to use zsh
  set foldenable                  		" Auto fold code
"   set list                        " set nolist hide/show hidden chars eg
"   set ff=unix or ff=dos           " change the file line endings

" Key Bindings

  " toggle relativenumber and numbers
  map <leader>nn  :call Togglelinenumbers()<cr>

  " Edit init.vim
  map <leader>ev :e ~/.config/nvim/init.vim<cr>

  " turn off highlighted search
  map <leader>z  :nohlsearch<cr>
