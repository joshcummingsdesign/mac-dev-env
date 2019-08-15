" ------------ Plugins ------------ {{{
call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'

call plug#end()

" -- ctrlp --
" Use ripgrep when fuzzy-finding
if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif

" Ignore files when fuzzy-finding
let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|\.yardoc\|bower_components|node_modules|public$|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" -- Airline --
let g:airline_powerline_fonts = 1 " Use powerline fonts

" -- NERDTree --
let NERDTreeShowHidden=1     " Show dotfiles
autocmd BufEnter * lcd %:p:h " Set working directory to the current file
"}}}


" ------------ Color Scheme ------------ {{{
syntax on
colorscheme onedark

" Use 24-bit (true-color) mode
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  set termguicolors
endif
"}}}


" ------------ General Config ------------ {{{
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
set relativenumber             " Relative line numbers
set pastetoggle=<F2>           " In insert mode, press <F2> to go to paste mode
set selection=old              " Stop that annoying thing where vim selects the next line
set synmaxcol=511              " Dont apply syntax coloring after the 512th column
set ttimeout                   " Set a timeout to recognize key sequence
set ttimeoutlen=100            " Set timeout to 100ms
set visualbell                 " No sounds
set switchbuf=useopen          " Reveal already-opened files from quickfix window
set viminfo='100,f1            " Save up to 100 marks, enable capital marks
"}}}


" ------------ Spacing and Indentation ------------ {{{
set nowrap                   " Don't wrap lines
set linebreak                " Wrap lines at word boundaries if necessary
set nolist                   " Don't show trailing whitespace (list disables linebreak)
set autoindent               " Copy previous line's indent
set preserveindent           " Preserve indent structure
set copyindent               " Newline copies existing line structure
set shiftwidth=4             " Number of spaces to use for each indent step
set softtabstop=4            " Number of spaces that a <Tab> counts for
set expandtab                " Use spaces to insert a <Tab>
set listchars=tab:»·,trail:· " Set characters to use for trailing tabs and spaces
"}}}


" ------------ Search Settings ------------ {{{
set incsearch  " Find the next match as we type the search
set hlsearch   " Hilight searches by default
set ignorecase " Ignore Case
set smartcase  " Enable Smart Case Search
"}}}


" ------------ Scroll Settings ------------ {{{
set scrolloff=3      " Keep cursor 3 lines away from top and bottom while scrolling
set sidescrolloff=15 " Keep 15 colums to left/right of cursor while scrolling
set sidescroll=1     " Smooth horizontal scrolling
"}}}


" ------------ Key Bindings ------------ {{{
" Leader
let mapleader = "\<Space>"

" Esc
inoremap fd <Esc>
xnoremap fd <Esc>

" Move to word
map <Leader>jw <Plug>(easymotion-bd-w)
nmap <Leader>jw <Plug>(easymotion-overwin-w)

" Move to line
map <Leader>jl <Plug>(easymotion-bd-jk)
nmap <Leader>jl <Plug>(easymotion-overwin-line)

" Move to character
map <Leader>jj <Plug>(easymotion-bd-f)
nmap <Leader>jj <Plug>(easymotion-overwin-f)

" Manipulate windows spacemacs-style
nnoremap <silent> <leader>wh <C-w>h
nnoremap <silent> <leader>wl <C-w>l
nnoremap <silent> <leader>wk <C-w>k
nnoremap <silent> <leader>wj <C-w>j

" Easy window splits
nnoremap <silent> <leader>wv <C-w>v
nnoremap <silent> <leader>ws <C-w>s

" Basic spacemacs compatibility bindings
nnoremap <silent> <leader>sc :nohlsearch<CR>
nnoremap <silent> <leader>fs :w<CR>
nnoremap <leader>ft :cd %:p:h<cr>:Lexplore<cr>
nnoremap <leader>ad :cd %:p:h<cr>:Explore<cr>
nnoremap <silent> <leader>bb :buffers<CR>
nnoremap <silent> Q :q<CR>
nnoremap <silent> <leader>fed :e ~/.vimrc<CR>
nnoremap <silent> <leader>bp :bprevious<CR>
nnoremap <silent> <leader>bn :bnext<CR>
nnoremap <silent> <leader>tn :tabnext<CR>
nnoremap <silent> <leader>tp :tabprev<CR>
nnoremap <leader>ff :e<SPACE>
nnoremap <leader>tw :set nolist!<CR>
nnoremap <leader>tl :set nowrap!<CR>
nnoremap <leader>sp :set paste!<CR>

" Page manipulations
nnoremap <silent> <CR> <C-f>
nnoremap <silent> <Backspace> <C-b>

" Toggle NERDTree
map <C-\> :NERDTreeToggle<CR>
"}}}
