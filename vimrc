" 鼠标可以工作咯
"set mouse=a

" 定义临时文件的位置
set backupdir=./.backup,.,/tmp
set directory=.,./.backup,/tmp

" fuzzyfinder
" {
map ,,  :FufCoverageFile!<cr>
" 查找项目的文件
map ,.  :FufBuffer!<cr>
" 查找bufferr的文件
let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|DS_Store|dll|bak|orig|swp)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|(tmp|log|db/migrate|vendor)'
let g:fuf_enumeratingLimit = 5000
let g:fuf_coveragefile_prompt = ':'
let g:fuf_buffer_prompt = ':'
"} fuzzyfinder

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

"set number                        " Show line numbers.
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

"set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
"set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P


if has('statusline')
  set laststatus=2

  " Broken down into easily includeable segments
  set statusline=%<%f\    " Filename
  set statusline+=%w%h%m%r " Options
  set statusline+=%{fugitive#statusline()} "  Git Hotness
  set statusline+=\ [%{&ff}/%Y]            " filetype
  set statusline+=\ [%{getcwd()}]          " current dir
  set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

" Or use vividchalk
"colorscheme topfunky-light
"colorscheme vibrantink
"colorscheme solarized
colorscheme sunburst

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
autocmd FileType ruby set foldmethod=syntax
"autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2
"let ruby_fold=0               " Ruby
set foldlevel=20
set foldlevelstart=20

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

"Run vim in irb
if has("autocmd")
  " Enable filetype detection
  filetype plugin indent on
 
  " Restore cursor position
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
endif
if &t_Co > 2 || has("gui_running")
  " Enable syntax highlighting
  syntax on
endif

nmap <leader>n  :NERDTreeToggle<CR>


" Vim UI {

    "set cursorline                  " highlight current line
    if has('cmdline_info')
        set ruler                   " show the ruler
        set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
        set showcmd                 " show partial commands in status line and
                                    " selected characters/lines in visual mode
    endif

    if has('statusline')
        set laststatus=2

        " Broken down into easily includeable segments
        set statusline=%<%f\    " Filename
        set statusline+=%w%h%m%r " Options
        set statusline+=%{fugitive#statusline()} "  Git Hotness
        set statusline+=\ [%{&ff}/%Y]            " filetype
        set statusline+=\ [%{getcwd()}]          " current dir
        set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
    endif

    set backspace=indent,eol,start  " backspace for dummies
    set linespace=0                 " No extra spaces between rows
    "    set nu                          " Line numbers on
    set showmatch                   " show matching brackets/parenthesis
    set incsearch                   " find as you type search
    set hlsearch                    " highlight search terms
    set winminheight=0              " windows can be 0 line high
    set ignorecase                  " case insensitive search
    set smartcase                   " case sensitive when uc present
    set wildmenu                    " show list instead of just completing
    set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common part, then all.
    set whichwrap=b,s,h,l,<,>,[,]   " backspace and cursor keys wrap to
    set scrolljump=5                " lines to scroll when cursor leaves screen
    set scrolloff=3                 " minimum lines to keep above and below cursor
    set foldenable                  " auto fold code
    set list
    set listchars=tab:,.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace
" }


    set encoding=utf-8 " Necessary to show Unicode glyphs   
    set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors

" 输入法解决
"se imd
"au InsertEnter * se noimd
"au InsertLeave * se imd
"au FocusGained * se imd
let g:Powerline_symbols = 'fancy'


" 显示 Ruby/Rails/Rspec 文档
"
"打开浏览器
let g:ruby_doc_command='open'
let g:ruby_doc_ruby_host='http://apidock.com/ruby/'
"使用方法， 光标在单词上面 然后大写"
"RB for Ruby
"RS for RSpec
"RR for Rails
