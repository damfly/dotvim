" Inspiration from janus' vimrc & holman/dotfiles

" Infect with pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
call pathogen#infect()

" Base
set nocompatible
filetype plugin indent on
set encoding=utf-8

" Ignores
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*node_modules/* " ignore node_modules

" ----------------------------------------------------------------------------
"  Text Formatting
" ----------------------------------------------------------------------------

set autoindent             " automatic indent new lines
set smartindent            " be smart about it
inoremap # X<BS>#
set nowrap                 " do not wrap lines
set softtabstop=2          " yep, two
set shiftwidth=2           " ..
set tabstop=4
set expandtab              " expand tabs to spaces
set nosmarttab             " fuck tabs
set formatoptions+=n       " support for numbered/bullet lists
set textwidth=120           " wrap at 120 chars by default
set virtualedit=block      " allow virtual edit in visual block ..

" ----------------------------------------------------------------------------
"  Remapping
" ----------------------------------------------------------------------------

" lead with &
let mapleader = "&"

" ----------------------------------------------------------------------------
"  UI
" ----------------------------------------------------------------------------

set ruler                  " show the cursor position all the time
set noshowcmd              " don't display incomplete commands
set nolazyredraw           " turn off lazy redraw
set number                 " line numbers
set wildmenu               " turn on wild menu
set wildmode=list:longest,full
set ch=2                   " command line height
set backspace=2            " allow backspacing over everything in insert mode
set whichwrap+=<,>,h,l,[,] " backspace and cursor keys wrap to
set shortmess=filtIoOA     " shorten messages
set report=0               " tell us about changes
set nostartofline          " don't jump to the start of line when scrolling
set noshowmode             " disable showmode (powerline shows it)

syntax enable              " enable syntax
set background=dark        " use solarized dark
colorscheme solarized      " use solarized colorscheme

set foldmethod=marker      " code folding with markers

" ----------------------------------------------------------------------------
"  Powerline
" ----------------------------------------------------------------------------

"let g:Powerline_symbols = 'fancy'
"let g:Powerline_theme = 'skwp' " solarized
"let g:Powerline_colorscheme = 'skwp' " solarized
"call Pl#Theme#InsertSegment('ws_marker', 'after', 'lineinfo') " white spaces
let g:airline_powerline_fonts=1

" ----------------------------------------------------------------------------
"  The NerdTree
" ----------------------------------------------------------------------------

" Open the tree if no files specified
autocmd vimenter * if !argc() | NERDTree | endif
" Close vim if the tree is last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif 
" Ignores
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$', '\node_modules/', 'tmp/']
" Map <Leader>n to toggle the tree
map <Leader>n :NERDTreeToggle<CR>

" ----------------------------------------------------------------------------
"  CoffeeScript
" ----------------------------------------------------------------------------

au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable " Fold on indent (hit zi)
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab " default indent
"au BufWritePost *.coffee silent CoffeeMake!     " recompile file when written
"au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw! " recompiles silentely


" ----------------------------------------------------------------------------
"  .swp files
" ----------------------------------------------------------------------------

set backupdir=~/.vim/backup
set directory=~/.vim/backup

" ----------------------------------------------------------------------------
" Visual Cues
" ----------------------------------------------------------------------------

set showmatch              " brackets/braces that is
set mat=5                  " duration to show matching brace (1/10 sec)
set incsearch              " do incremental searching
set laststatus=2           " always show the status line
set ignorecase             " ignore case when searching
set smartcase              " smart case
set hlsearch               " highlight searches
set visualbell             " shut the fuck up

" ---------------------------------------------------------------------------
"  Strip all trailing whitespace in file
" ---------------------------------------------------------------------------

function! StripWhitespace ()
    exec ':%s/ \+$//gc'
endfunction
map ,s :call StripWhitespace ()<CR>

