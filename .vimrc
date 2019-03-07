" Vundle
set nocompatible             " not compatible with the old-fashion vi mode
filetype off                 " required!

" http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/
" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif

if $COLORTERM == 'gnome-terminal' || $COLORTERM == ''
  set t_Co=256
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
"Bundle 'tomtom/tcomment_vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'airblade/vim-gitgutter'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle 'Townk/vim-autoclose'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-fugitive'
Bundle 'honza/vim-snippets'
Bundle 'garbas/vim-snipmate'
Bundle 'will133/vim-dirdiff'
Bundle 'mileszs/ack.vim'


" general
filetype plugin indent on    " enable filetype-specific plugins
set history=50               " keep 50 lines of command line history
set number                   " enable line numbers
set autoindent               " enable autoindent
set expandtab                " use space instead of tab
set tabstop=8                " insert 2 spaces for a tab
set shiftwidth=8             " the number of space characters inserted for indentation
syntax on                    " enable syntax highlighting
colors molokai               " vim color scheme
set autoread                 " auto read when file is changed from outside
set history=50               " keep 50 lines of command line history

if has("gui_running")        " GUI color and font settings
  set guifont=Monaco:h14
  set t_Co=256               " 256 color mode
end
if has("gui_macvim")         " macvim shift movement
  let macvim_hig_shift_movement = 1
endif
set cursorline               " highlight current line
set clipboard=unnamed        " yank to the system register (*) by default
set showmatch                " Cursor shows matching ) and }
set showmode                 " Show current mode
set backspace=2              " make backspace work like most other apps

" ctags
inoremap <C-]> <C-x><C-]> 
set tags=./tags;
"set tags+=~/.vim/cltags
"set tags+=~/.vim/systags

"syn match Operator contained "[()]"

" tmux will only forward escape sequences to the terminal if surrounded by a DCS sequence
" http://sourceforge.net/mailarchive/forum.php?thread_name=AANLkTinkbdoZ8eNR1X2UobLTeww1jFrvfJxTMfKSq-L%2B%40mail.gmail.com&forum_name=tmux-users
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" disable sound on errors
set noeb vb t_vb=

" Hide toolbar and scrollbars in MacVim
set guioptions-=T
set guioptions-=L
set guioptions-=r

" add spell checking and automatic wrapping at the
" recommended 72 columns to you commit messages
autocmd Filetype gitcommit setlocal spell textwidth=72

" to move effeciently between splits
nmap gh <C-w>h
nmap gj <C-w>j
nmap gk <C-w>k
nmap gl <C-w>l

" Bash like keys for the command line
cnoremap <C-A>      <Home>
cnoremap <C-E>      <End>
cnoremap <C-K>      <C-U>

" open sidebar with cmd+k
map <F3> <Esc>:NERDTreeToggle<CR>

" encoding settings
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8

" comment lines with cmd+/
"map <C-/> :TComment<cr>
"vmap <C-/> :TComment<cr>gv

" status line {
set laststatus=2

" --- PowerLine
let g:Powerline_symbols = 'fancy' " require fontpatcher

" --- vim-gitgutter which show a git diff 
let g:gitgutter_enabled = 1
highlight clear SignColumn " For the same appearance as your line number column

" --- grep window
"map <F2> <Esc>:copen<CR>:grep -srn --binary-files=without-match --exclude-dir={.git,.svn} --exclude={*.s,tags} . -e  
map <F2> <Esc>:Ack<space>

" --- tagbar which show funcs & vars
nmap <F4> <Esc>:TagbarToggle<CR>
" --- ctags window                                                                                                           
map <F5> <Esc>:copen<CR>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --langmap=c++:+.cu.cl

" --- ctrlp is a finder
let g:ctrlp_dont_split = 'NERD_tree_2'
let g:ctrlp_show_hidden = 1

" --- for the color of operator ()
autocmd FileType * syn match Operator "[()]"


set cursorline
hi CursorLine cterm=none ctermbg=DarkMagenta ctermfg=White

set cursorcolumn
hi CursorColumn cterm=none ctermbg=DarkMagenta ctermfg=White

" --- for the search highlight
set hlsearch
hi Search cterm=reverse ctermbg=none ctermfg=none
