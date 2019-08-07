" === Plugins ===
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
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'

call plug#end()


" === Fuzzy-Finding ===
" -- Use ripgrep when fuzzy-finding --
if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif

" -- Ignore files when fuzzy-finding --
let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|\.yardoc\|bower_components|node_modules|public$|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }


" === Color Scheme ===
" -- Use 24-bit (true-color) mode --
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  set termguicolors
endif

" -- Syntax Highlighting
syntax on

" -- Color Scheme --
colorscheme onedark


" === Airline ===
let g:airline_powerline_fonts = 1


" === Settings ===
set shiftwidth=4
set number
set relativenumber

" === Key Bindings ===
" -- Leader --
let mapleader = "\<Space>"

" -- Esc --
inoremap fd <Esc>
xnoremap fd <Esc>

" -- Move to word --
map  <Leader>jw <Plug>(easymotion-bd-w)
nmap <Leader>jw <Plug>(easymotion-overwin-w)

" -- Move to line --
map <Leader>jl <Plug>(easymotion-bd-jk)
nmap <Leader>jl <Plug>(easymotion-overwin-line)

" -- Move to character --
map  <Leader>jj <Plug>(easymotion-bd-f)
nmap <Leader>jj <Plug>(easymotion-overwin-f)
nmap j2 <Plug>(easymotion-overwin-f2)

" -- Toggle NERDTree --
map <C-\> :NERDTreeToggle<CR>
