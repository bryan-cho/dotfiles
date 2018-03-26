set nocompatible

"***DO AFTER INSTALLING MACVIM***

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
call vundle#end()

" Powerline setup
set laststatus=2
set termencoding=utf-8
set guifont=Source\ Code\ Pro\ for\ Powerline
let g:Powerline_symbols = 'fancy'

filetype off
" Refer to http://dougblack.io/words/a-good-vimrc.html
colorscheme badwolf

syntax enable " enable syntax processing

" Shift width
set shiftwidth=2 " number of spaces to use for > indents

" Tabs
set tabstop=2 " number of visual spaces per <TAB>
set softtabstop=2 " number of spaces in tab
set expandtab " sets <TAB> to be spaces

" UI Configuration
set number " show line numbers
set showcmd " show command in bottom bar
set cursorline " show line for current cursor
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when necessary
set showmatch " highlight matching parenthesis

" Searching
set ignorecase " case insensitive
set incsearch " search while typing
set hlsearch " highlight matches

" \<space> to turn off hlsearch
nnoremap <leader><space> :nohlsearch<CR>

" Movement
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
nnoremap B ^
nnoremap E $
" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
" highlight last inserted text
nnoremap gV `[v`]

" Leader Shortcuts
inoremap jj <esc>

" save session
" type \s to save session then -S to reload
nnoremap <leader>s :mksession<CR>

execute pathogen#infect()

"map <C-n> :NERDTreeToggle<CR>

" highlight unnecessary whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
