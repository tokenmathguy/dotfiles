" Pathogen package manager
filetype off
execute pathogen#infect()
execute pathogen#helptags()
" execute pathogen#runtime_append_all_bundles()

"" filetypes
augroup filetypedetect
    au BufNewFile,BufRead *.go set filetype=go syntax=go
    au BufNewFile,BufRead *.js set filetype=js syntax=javascript
    au BufNewFile,BufRead *.rb set filetype=ruby syntax=ruby
    au BufNewFile,BufRead *.{yaml,yml} set filetype=yaml syntax=yaml
augroup END

augroup ftypetabset
"    autocmd FileType java setlocal shiftwidth=4 tabstop=4 noexpandtab
    autocmd FileType go   setlocal shiftwidth=4 tabstop=4 noexpandtab
    autocmd FileType html setlocal shiftwidth=2 tabstop=2 expandtab
    autocmd FileType js   setlocal shiftwidth=2 tabstop=2 expandtab
    autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 expandtab
    autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 expandtab
augroup END

au BufRead /tmp/psql.edit.* set syntax=sql

" indent known file types
filetype on
filetype plugin on
filetype plugin indent on
set autoindent

" mandatory
syntax enable

"" wat
" oldschool vi is not a thing
set nocompatible

" prevents some security exploits having to do with modelines in files.
set modelines=0

" nasty freezing
noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>

" anything other than utf-8 is an abomination
set encoding=utf-8
set fileencoding=utf-8

" line wrapping
set wrap
set textwidth=0
set wrapmargin=0

"" status
" always show the status line
set laststatus=2

" show line number in status bar
set ruler

"" navigation, split configuration, and manipulation
" split configuration
set splitbelow
set splitright

" vertical to horizontal ( | -> -- )
noremap <C-W>-  <C-W>t<C-W>K

" horizontal to vertical ( -- -> | )
noremap <C-W>\| <C-W>t<C-W>H
noremap <C-W>\  <C-W>t<C-W>H

" navigation shortcuts
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" nerdtree is ctrl-n
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen=1

" use tab to jump brackets
nnoremap <tab> %
vnoremap <tab> %

" fix backspace
set backspace=indent,eol,start

"" searching
" fix regexes
nnoremap / /\v
vnoremap / /\v

" ignore case if all lowercase, otherwise don't
set ignorecase
set smartcase

" highlight search results as you type
set incsearch
set showmatch
set hlsearch

" fugitive
autocmd QuickFixCmdPost *grep* cwindow

"" highlight current line
"set cursorline

"" color
" set colorcolumn=100
highlight ColorColumn ctermbg=darkblue
highlight LineNr ctermfg=darkgrey

set t_ut=
set t_Co=256
colorscheme jellybeans

" fast!
"set ttyfast

"" show whitespace
"set list
"set list listchars=tab:»-,trail:·,eol:¶

"" paste it
" set clipboard=unnamedplus
" set mouse=a
set pastetoggle=<F2>
nnoremap <silent> <F3> :let _s=@/<Bar>:%s/\t/    /e<Bar>:let @/=_s<Bar>:nohl<CR>
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Don't take forever when there's no X forwarding
set clipboard=exclude:.*

""" languages
"" python
let g:pymode_python='python3'

let g:pymode_folding=0
let g:pymode_options_max_line_length=100
let g:pymode_rope=0
let g:pymode_doc=1
let g:pymode_doc_key='K'

let g:pymode_lint_ignore="E203"

let g:pymode_lint=1
let g:pymode_lint_checker="pyflakes,pep8"
" let g:pymode_lint_write=1
let g:pymode_virtualenv=1

" let g:pymode_breakpoint=1
" let g:pymode_breakpoint_key='<leader>b'

let g:pymode_syntax=1
" let g:pymode_syntax_all=1
" let g:pymode_syntax_indent_errors=g:pymode_syntax_all
" let g:pymode_syntax_space_errors=g:pymode_syntax_all

"" jedi
let g:jedi#use_tabs_not_buffers = 0  " use buffers instead of tabs
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#show_call_signatures = "1"
let g:jedi#goto_command = "<Leader>gt"
let g:jedi#goto_assignments_command = "<Leader>ga"
let g:jedi#goto_definitions_command = "<Leader>gg"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<Leader>u"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<Leader>r"

nnoremap <F6> :Coveragepy show<CR>
nnoremap <F7> :Coveragepy refresh<CR>

"" golang
let g:go_fmt_autosave=0

"" be sensitive
set noic

"" ignore what we won't edit in vim
set wildignore+=*.tmp,*.swp,*.gz,*.bz2,*.xz,*.pyc,*.doctree,*.pickle,*/_build/*

"" spaces4life
" no auto-indent
set noai
set tabstop=4
set shiftwidth=4
set expandtab
