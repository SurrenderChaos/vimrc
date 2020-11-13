let mapleader = "\<Space>"
inoremap kj <Esc>
cnoremap <silent> kj <Esc>
inoremap KJ <Esc>
cnoremap <silent> KJ <Esc>
nnoremap <leader>rv :source $HOME/_vimrc<CR>
set nu rnu
set ruler
set history=500
set autoread
set cmdheight=2
set hid
set hlsearch
set incsearch
set showmatch
set noerrorbells
set novisualbell
set foldcolumn=1
syntax enable
set ai
set si
set wrap
au BufReadPost * if  line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set laststatus=2

set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
function! HasPaste()
    if &paste
          return 'PASTE MODE '
    endif
    return ''
endfunction


if $COLORTERM == 'gnome-terminal'
	    set t_Co=256
endif

try
	colorscheme desert
catch
endtry

set background=dark
set nocompatible
set numberwidth=5
set winwidth=104
set winheight=5
set winminheight=5
set winheight=999
set nobackup
set nowb
set noswapfile

