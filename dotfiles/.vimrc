" ------------ Plugins ------------
call plug#begin('~/.vim/plugged')

" Vim
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'leafgarland/typescript-vim'
Plug 'lifepillar/vim-solarized8'
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/ReplaceWithRegister'

call plug#end()


" ------------ Theme ------------
if has ('termguicolors')
  set termguicolors " Use 24-bit (true-color) mode
endif
syntax on
set background=dark
colorscheme solarized8


" ------------ Plugin Settings ------------
" -- Airline --
let g:airline_theme='base16_solarized'
let g:airline_powerline_fonts = 1

" -- ctrlp --
" Use ripgrep when fuzzy-finding
if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif

" Ignore files when fuzzy-finding
let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|.cache|node_modules|build|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" Position fuzzy finder at the top
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0

" -- NERDTree --
" Show dotfiles
let NERDTreeShowHidden = 1

" -- EasyMotion --
let g:EasyMotion_do_shade = 0
hi EasyMotionTarget ctermbg=Blue ctermfg=White
hi EasyMotionTarget2First ctermbg=Blue ctermfg=White
hi EasyMotionTarget2Second ctermbg=Blue ctermfg=White

" -- Emmet --
let g:user_emmet_leader_key='<C-H>'

" -- Sneak --
highlight link Sneak None


" ------------ General Config ------------
set autoread                   " Reload files changed outside vim
set backspace=indent,eol,start " Allow backspace in insert mode
set browsedir=buffer           " Browse should default to current buffer
set directory-=.               " No .swp/swo etc. in `cwd`
set encoding=utf-8             " UTF-8 encoding
set hidden                     " Hidden Buffers
set history=1000               " Store lots of :cmdline history
set lazyredraw                 " Buffer screen updates
set nrformats-=octal           " Increase floats w/ ctrl-a
set number                     " Show line number
set pastetoggle=<F2>           " In insert mode, press <F2> to go to paste mode
set selection=old              " Stop that annoying thing where vim selects the next line
set synmaxcol=511              " Don't apply syntax coloring after the 512th column
set ttimeout                   " Set a timeout to recognize key sequence
set ttimeoutlen=100            " Set timeout to 100ms
set visualbell                 " No sounds
set switchbuf=useopen          " Reveal already-opened files from quickfix window
set spell spelllang=en_us      " Spell checking
set splitbelow                 " Open new splits on the bottom
set viminfo='100,f1            " Save up to 100 marks, enable capital marks


" ------------ Spacing and Indentation ------------
set nowrap                   " Don't wrap lines
set linebreak                " Wrap lines at word boundaries if necessary
set nolist                   " Don't show trailing whitespace (list disables linebreak)
set autoindent               " Copy previous line's indent
set preserveindent           " Preserve indent structure
set copyindent               " Newline copies existing line structure
set shiftwidth=2             " Number of spaces to use for each indent step
set softtabstop=2            " Number of spaces that a <Tab> counts for
set expandtab                " Use spaces to insert a <Tab>
set listchars=tab:»·,trail:· " Set characters to use for trailing tabs and spaces


" ------------ Search Settings ------------
set incsearch  " Find the next match as we type the search
set ignorecase " Ignore Case
set smartcase  " Enable Smart Case Search


" ------------ Scroll Settings ------------
set scrolloff=3      " Keep cursor 3 lines away from top and bottom while scrolling
set sidescrolloff=15 " Keep 15 columns to left/right of cursor while scrolling
set sidescroll=1     " Smooth horizontal scrolling


" ------------ Editor Settings ------------
autocmd BufWritePre * %s/\s\+$//e " Remove trailing whitespace on save


" ------------ Cursor Settings ------------
" Set cursor to line in insert mode
let &t_SI = "\e[5 q"
" Set cursor to block in nomral mode
let &t_EI = "\e[1 q"
" Set cursor to block on vim start
autocmd VimEnter * silent exec "! echo -ne '\e[1 q'"


" ------------ Key Bindings ------------
" Leader
let mapleader = "\<Space>"

" Esc
inoremap fd <Esc>
xnoremap fd <Esc>

" Add new lines
nnoremap o o<Esc>
nnoremap O O<Esc>

" Manipulate windows spacemacs-style
nnoremap <silent> <leader>wh <C-w>h
nnoremap <silent> <leader>wl <C-w>l
nnoremap <silent> <leader>wk <C-w>k
nnoremap <silent> <leader>wj <C-w>j
nnoremap <silent> <leader>wv <C-w>v
nnoremap <silent> <leader>ws <C-w>s

" Basic spacemacs compatibility bindings
nnoremap <silent> <leader>fs :w<CR>
nnoremap <silent> <leader>bb :buffers<CR>
nnoremap <silent> Q :q<CR>
nnoremap <silent> <leader>fed :e ~/.vimrc<CR>
nnoremap <silent> <leader>bp :bprevious<CR>
nnoremap <silent> <leader>bn :bnext<CR>
nnoremap <silent> <leader>tn :tabnext<CR>
nnoremap <silent> <leader>tp :tabprev<CR>
nnoremap <silent> <leader>cn :cn<CR>
nnoremap <silent> <leader>cp :cp<CR>
nnoremap <leader>ff :e<SPACE>
nnoremap <leader>tl :set nolist!<CR>
nnoremap <leader>tw :set nowrap!<CR>
nnoremap <leader>sp :set paste!<CR>

" Page navigation
nnoremap <silent> <CR> <C-f>
nnoremap <silent> <Backspace> <C-b>

" Toggle spell checking
nnoremap <silent> <leader>sc :setlocal spell! spelllang=en_us<CR>

" Open terminal buffer
nnoremap <silent> <leader>t :terminal ++rows=20<CR>

" EasyMotion
map <Leader>jw <Plug>(easymotion-bd-w)
map <Leader>jl <Plug>(easymotion-bd-jk)
map <Leader>jj <Plug>(easymotion-bd-f)

" NERDTree
map <silent> <C-\> :NERDTreeToggle<CR>

" Reload .vimrc
nnoremap <Leader>R :source $MYVIMRC<CR>
