" Example Vim configuration.
" Copy or symlink to ~/.vimrc or ~/_vimrc.

set nocompatible                  " Must come first because it changes other options.

silent! call pathogen#runtime_append_all_bundles()

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

runtime macros/matchit.vim        " Load the matchit plugin.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

" UNCOMMENT TO USE
set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs

set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" Or use vividchalk
"colorscheme topfunky-light
"colorscheme vibrantink
colorscheme emacs

" Tab mappings.
"map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" Uncomment to use Jamis Buck's file opening plugin
map <Leader>t :FuzzyFinderTextMate<Enter>

" Controversial...swap colon and semicolon for easier commands
"nnoremap ; :
"nnoremap : ;

"vnoremap ; :
"vnoremap : ;

" Automatic fold settings for specific files. Uncomment to use.
"autocmd FileType ruby setlocal foldmethod=syntax
"autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2

" For the MakeGreen plugin and Ruby RSpec. Uncomment to use.
autocmd BufNewFile,BufRead *_spec.rb compiler rspec

"let g:langpair="en|cn"
set helplang=cn

"format css like textmate
"before brew install csstidy
"G =
autocmd filetype css setlocal equalprg=csstidy\ -\ --silent=true 

if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m1=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" 显示indent
" Usage \ig
let g:indent_guides_auto_colors = 0
set ts=1 sw=2 et
let g:indent_guides_guide_size = 1 
let g:indent_guides_start_level = 1 
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#303030 ctermbg=1
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#191919 ctermbg=1

set autoindent
set showtabline=2

" surround map
map  <leader>= vs=
map  <leader>- vs-
map  <leader># vs#
"<%= %> <C-S-s-=>
"<% %> <C-S-s-->
"<%# %> <C-S-s-#>
