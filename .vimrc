"------------------------------ Vundle Start -----------------------------
set nocompatible
set shell=/bin/bash
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Python-mode-klen'
Plugin 'indentpython'
Plugin 'The-NERD-Commenter'
Plugin 'ctrlp.vim'
Plugin 'itchyny/calendar.vim'
Plugin 'taglist.vim'
Plugin 'SuperTab'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'ZoomWin'
"Plugin 'Auto-Pairs'
Plugin 'mbbill/undotree'
Plugin 'christoomey/vim-tmux-navigator'
call vundle#end()
filetype plugin indent on
" ----------------------------- Vundle End   -----------------------------
"一键运行代码
map <F5> :call CompileRunGcc()<CR>
    func! CompileRunGcc()
        exec "w"
if &filetype == 'c'
            exec "!g++ % -o %<"
            exec "!time ./%<"
elseif &filetype == 'cpp'
            exec "!g++ % -o %<"
            exec "!time ./%<"
elseif &filetype == 'java'
            exec "!javac %"
            exec "!time java %<"
elseif &filetype == 'sh'
            :!time bash %
elseif &filetype == 'python'
            exec "!time python3 %"
elseif &filetype == 'html'
            exec "!firefox % &"
elseif &filetype == 'go'
    "        exec "!go build %<"
            exec "!time go run %"
elseif &filetype == 'mkd'
            exec "!~/.vim/markdown.pl % > %.html &"
            exec "!firefox %.html &"
endif
    endfunc 

"au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
"au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Control'
"au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

let mapleader=","
noremap \ ,
" ----NERDTree----
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

map <F4> :tabe<CR>
map <F6> :PymodeLint<CR>
map <F7> :TlistOpen<CR>

map <leader>t : TlistOpen<CR>
map <leader>t : TlistOpen<CR>
map <leader><leader> : NERDTreeToggle<CR>
map <leader><leader> : NERDTreeToggle<CR>

map <leader>x : PymodeLint<CR>
map <leader>a : tabe<CR>
map <leader>z : x<CR>

set completeopt-=preview
set hls

" ---NERDTREE---
let NERDTreeShowBookmarks=1

" ---taglist---
" let Tlist_Auto_Open = 1
let Tlist_Show_One_File = 1
let Tlist_Close_On_Select = 1

" ----color----
hi Pmenu ctermfg=black ctermbg=white  guibg=#444444
hi PmenuSel  ctermfg=white  ctermbg=black  guifg=white    guibg=grey40

" ----cursor----
set cursorline
"set cursorcolumn

set nowrapscan

set tabstop=4
set expandtab
"set shiftwidth=4
"set softtabstop=4
%ret! 4
"filetype indent on 

let g:pymode = 1
let g:pymode_folding = 0
let g:pymode_warnings = 1
let g:pymode_doc = 0
let g:pymode_lint = 1
let g:pymode_lint_on_write = 0
let g:pymode_lint_ignore = "W"
let g:pymode_lint_checkers = ['pyflakes']
let g:pymode_rope_goto_definition_cmd = 'new'

syntax on
