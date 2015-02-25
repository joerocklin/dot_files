
" We're well into the Next Generation - stop being compatible with the past,
" disable vi compatibility
set nocompatible

" Disable modelines for security reasons
set modelines=0

" Tab settings - 2 space characters for everything, even tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set encoding=utf-8    " UTF-8, not everyone uses English natively
set scrolloff=3       " Don't let the cursor get any closer than 2 lines from the screen top/bottom
set autoindent 
set smartindent
set showmode
set showcmd
set wildmenu          " Allow tab-completion in command mode
set wildmode=list:longest
set visualbell        " Don't make audible noises
set cursorline        " higlight which line we're on
set ttyfast           " Optimize for fast terminals
set ruler
set backspace=indent,eol,start
set laststatus=2      " always show a status line

" Use , as the leader key instead of \
let mapleader = ","

" --------------------------
"  Searching/moving improvements
" --------------------------
" Use perl regex formatting by default
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault         " add the 'global' flag by default
" Do intelligent highlighting as soon as we start looking for things
set incsearch
set showmatch
set hlsearch
" Clear searches with space instead of the :noh command
nnoremap <leader><space> :noh<cr>
" use tab to match bracket pairs
nnoremap <tab> %
vnoremap <tab> %

set textwidth=119          " force line-breaks at 119 chars
set formatoptions=qrn1     " See :h fo-table for details on these

" Time to force myself to use hjkl
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
" move up/down based on displayed lines, not 'file lines' in the case of things being wrapper
nnoremap j gj
nnoremap k gk

" Auto-save when the window loses focues
au FocusLost * :wa

" Quick escape back to normal mode
inoremap jj <ESC>

