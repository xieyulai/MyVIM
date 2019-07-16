"------------------------------ Vundle Start -----------------------------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'The-NERD-tree'
Plugin 'Python-mode-klen'
Plugin 'indentpython'
Plugin 'The-NERD-Commenter'
Plugin 'ctrlp.vim'
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

" ----NERDTree----
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

set completeopt-=preview
set hls

" ----cursor----
set cursorline
"set cursorcolumn

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
