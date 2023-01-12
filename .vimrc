" ----
" http://amix.dk/vim/vimrc.html
" ----

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
"set wildmenu

" Ignore compiled files
"set wildignore=*.o,*~,*.pyc

" Always show current position
set ruler

" Enable mouse mode
set mouse=a

" Height of the command bar
" set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,[,]

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
hi Search cterm=NONE ctermfg=black ctermbg=yellow
set hlsearch

" Highlight in visual mode in a readable way
hi Visual term=reverse cterm=reverse guibg=LightGrey

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


" ----
" https://gist.github.com/rocarvaj/2513367
" ----

" VIM Configuration File
" Description: Optimized for C/C++ development, but useful also for other things.
" Author: Gerhard Gappmeier
"

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set shiftwidth=4     " indent also with 4 spaces
set softtabstop=4
set tabstop=4        " display tab characters as 4 spaces
set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
" set textwidth=120
set wrap linebreak nolist
" turn syntax highlighting on
set t_Co=256
syntax on
" colorscheme wombat256
" turn line numbers on
set number
" highlight matching braces
set showmatch
" intelligent comments
"set comments=sl:/*,mb:\ *,elx:\ */

" Install OmniCppComplete like described on http://vim.wikia.com/wiki/C++_code_completion
" This offers intelligent C++ completion when typing '.', '->' or <C-o>
" Load standard tag files
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4

" Install DoxygenToolkit from http://www.vim.org/scripts/script.php?script_id=987
"let g:DoxygenToolkit_authorName="John Doe <john@doe.com>"

"
" Enhanced keyboard mappings
"

" escape from insert mode
" also pressing C-c or C-[ exits from insert mode
imap jj <Esc>

imap kj <Esc>
imap jk <Esc>
" go to beginning of line
imap lh <Esc>I
" go to end of line
imap hl <Esc>A

" home and end navigation
nmap lh ^
nmap hl $

" navigation
nmap <C-Tab> :b#<CR>
imap <C-Tab> <Esc>:b#<CR>i
nmap <M-Left> <C-o>
nmap <M-Right> <C-i>

" recreate tags file with F5
"map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
" create doxygen comment
"map <F6> :Dox<CR>
" build using makeprg with <F7>
"map <F7> :make<CR>
" build using makeprg with <S-F7>
"map <S-F7> :make clean all<CR>

" F8 turn off highlighted search results in normal or insert mode
nmap <F8> :nohl<CR>
imap <F8> <ESC>:nohl<CR>a
" F9 will save the file, if insert mode, leave insert, save, re-enter insert
nmap <F9> :w<CR>
imap <F9> <ESC>:w<CR>a

" switch between header/source with F10
" map <F10> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
"map <F10> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>
" goto definition with F12
map <F12> <C-]>

" in diff mode we use the spell check keys for merging
if &diff
  " diff settings
  map <M-Down> ]c
  map <M-Up> [c
  map <M-Left> do
  map <M-Right> dp
  map <F9> :new<CR>:read !svn diff<CR>:set syntax=diff buftype=nofile<CR>gg
else
  " spell settings
  " :setlocal spell spelllang=en
  " set the spellfile - folders must exist
  " set spellfile=~/.vim/spellfile.add
  " map <M-Down> ]s
  " map <M-Up> [s
endif

"
" plugins
"

"set runtimepath^=~\vimfiles
"set runtimepath^=~\vimfiles\bundle\ctrlp.vim

" ctrl-p: help finding files
"set runtimepath^=~/.vim/bundle/ctrlp.vim
" paredit: help finding files
"set runtimepath^=~/.vim/bundle/paredit.vim
"let g:paredit_mode = 1
" rainbow:
let g:rainbow_active = 1
" 0 if you want to enable later using :RainbowToggle

" set the leader because the default (whatever it is) doesn't seem to work
let mapleader = ","

highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\v(\s+$)|(^(\s+)?(\t+)(\s+)?\ze\w)/
"autocmd ColorScheme * highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen

"highlight Tabs ctermbg=darkred guibg=darkred
"match Tabs /\t+/
"autocmd ColorScheme * highlight Tabs ctermbg=darkred guibg=darkred

command Trim :%s/\s\+$//e

"autocmd BufWritePre * :%s/\s\+$//e
"autocmd BufWritePre * :retab

set background=dark
if has('gui_running')
    " solarized for gvim
    colorscheme solarized
else
    "colorscheme monokai
    "colorscheme elflord
    colorscheme default
endif

" protect against unfortunate deletions
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>
