" Skip VI regulations
set nocompatible

" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugin
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Set file encoding to UTF-8 w/o BOM
set encoding=utf8
set nobomb

" ablak induló mérete
set lines=25
set columns=80

" case insensitive keresés
set ignorecase
set smartcase

" találatok kiemelése
set hlsearch

" Make search act like search in modern browsers
set incsearch

" Change buffer without saving
set hidden

" Show matching brackets
set showmatch

" Indicator blinking
set mat=5

" Always show current position
set ruler

" Line numbering shows distance from current line
" set relativenumber
set number

" Always show what mode VIM is in
set showmode

set cursorline
set cursorcolumn

" 
set showcmd

" Custom statusline
" set statusline=%F%m%r%h%w\ %Y\ %l/%L\ (%p%%)
set statusline=%F\ \ %Y\ \ %l/%L:%c\ (%p%%)

set wrapscan

" Make command line two lines high
set cmdheight=2

" Tell Vim to always put a status line in
set laststatus=2

" egérkurzor elrejtése gépeléskor
set mousehide

" eszköztár és menüsáv elrejtése
set guioptions=ac

" ablak görgetése 5 sornyi ráhagyással
set scrolloff=5

" sortörés be/ki
nmap ,w :set invwrap:set wrap?

" átváltja a munkakönyvtárat az aktuális fájl szülõjére
nmap ,cd :lcd %:h

" => COLORS AND FONTS

" kódszínezés be
syntax enable

" színséma
colorscheme solarized
set bg=dark

" betûtípus
set guifont=consolas:h11

" sorszámmezõ szélessége
set numberwidth=5

" aktuális sor kiemelése
" set cursorline

" cursor line and column for focused window only
au WinEnter * setlocal cursorline | setlocal cursorcolumn
au WinLeave * setlocal nocursorline | setlocal nocursorcolumn

" => BACKUP AND UNDO

" Turn backup off
set nobackup
set nowb
set noswapfile

" Turn on undofile
try
    if MySys() == "windows"
        set undodir=C:\Users\nfol\temp
    else
        set undodri=~/.vim_runtime/undodir
    endif

    set undofile
catch
endtry

" => TABS AND INDENTATION

" Set backspace config
set backspace=indent,eol,start

" Replace tabs with spaces
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab

" max. sorszélesség
set tw=3000

" Auto indent
set ai 

" Smart indent
" set si

" Wrap lines
set wrap
set linebreak

" set foldenable
set nofen
" set fdm=indent

" szóköz nyitja/csukja a hajtást
nnoremap <space> za

" fájlablakok közötti mozgás
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" a sortöredékek között is mozoghatunk függõlegesen
noremap j gj
noremap k gk
nnoremap 0 g0
nnoremap $ g$

" tabs jump around brackets
nnoremap <tab> %
vnoremap <tab> %

" marad Visual Block módban indentálás után
vnoremap < <gv
vnoremap > >gv

" gyorsabb scrollozás
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" kurzorgombok letiltása
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" insert mód elhagyása
inoremap qq <ESC>

" toggle fullscreen mode
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>

" insert blank lines without going into insert mode
nmap <CR> o<ESC>k
nmap <S-CR> O<ESC>j

" make :W to :w
cnoreabbrev W w
"
" make :Q to :q
cnoreabbrev Q q

" remap U to <C-r> for easier redo
nnoremap U <C-r>
