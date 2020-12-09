" Color Scheme
autocmd vimenter * colorscheme gruvbox
let g:gruvbox_bold = '1'
let g:gruvbox_italic = '1'
set bg=dark
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_termcolors = '256'
let g:gruvbox_vert_split = 'bg3'
let g:gruvbox_split = 'red'

"tmux
set term=screen-256color

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

" Ctags - rewrite py tag file on save - edit for more filetypes
command! MakeTags !ctags -R .
function! DelTagOfFile(file)
  let fullpath = a:file
  let cwd = getcwd()
  let tagfilename = cwd . "/tags"
  let f = substitute(fullpath, cwd . "/", "", "")
  let f = escape(f, './')
  let cmd = 'sed -i "/' . f . '/d" "' . tagfilename . '"'
  let resp = system(cmd)
endfunction

function! UpdateTags()
  let f = expand("%:p")
  let cwd = getcwd()
  let tagfilename = cwd . "/tags"
  let cmd = 'ctags -a -f ' . tagfilename . ' --c++-kinds=+p --fields=+iaS --extra=+q ' . '"' . f . '"'
  call DelTagOfFile(f)
  let resp = system(cmd)
endfunction
autocmd BufWritePost *.py call UpdateTags()

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
let g:pymode_rope = 1
let g:pymode_rope_completion = 1 
set completeopt=menuone,noinsert
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
let g:pymode_run = 1
let g:pymode_run_bind = '<leader>r'

" NERDTree
autocmd VimEnter *  NERDTree | wincmd p
autocmd StdinReadPre * let s:std_in=1
autocmd StdinReadPre * let s:std_in=1
let g:NERDTreeMinimalUI = 0

" Vim-slime

"Vim-ipython


