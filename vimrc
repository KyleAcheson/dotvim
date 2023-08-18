" Color Scheme
colorscheme nord

" General options
set encoding=utf-8
set number relativenumber
set tabstop=2
set shiftwidth=2 "shift=2 SPC, >> to tab
set softtabstop=4 "tab=4 SPC
set expandtab
set showcmd
set wildmenu "can tab to complete commands
set hlsearch
set shortmess-=S
set cursorline
"status line - buffer no., [cwd], filename, [line no., col no.]
set laststatus=2
set statusline=[b:%n]\[%{getcwd()}]\ %f%=%m[L\%l,\ C\%v]
set background=dark
set scrolloff=10
set path+=** " allow :find through child dirs

" Leader mappings
let mapleader=','
noremap <leader>t :term
noremap <leader>vt :vert term
noremap <leader>qa :qall
noremap <leader>qa! :qall!
noremap <leader>wa :wall
noremap <leader>gpwd :cd %:p:h
noremap <leader>lpwd :lcd %:p:h

" Plugins - will need to install
syntax on
filetype plugin on

" Pymode
let g:pymode_python = 'python3'
let g:pymode_lint_ignore = ["E501"]
let g:pymode_lint_message = 1
let g:pymode_lint_maxheight = 3
let g:pymode_lint_signs = 1
let g:pymode_lint_cwindow = 0
let g:pymode_motion = 1
let g:pymode_lint_on_fly = 1
let g:pymode_lint_signs = 1
"let g:pymode_rope = 1
"let g:pymode_rope_completion = 1 
"set completeopt=menuone,noinsert
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
let g:pymode_run = 1
let g:pymode_run_bind = '<leader>r'

" NERDTree
autocmd VimEnter *  NERDTree | wincmd p
autocmd StdinReadPre * let s:std_in=1
autocmd StdinReadPre * let s:std_in=1
let g:NERDTreeMinimalUI = 0
noremap <leader>n :NERDTreeToggle<CR>

