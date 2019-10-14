set number
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent

call plug#begin()

Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf.vim'
Plug 'townk/vim-autoclose'

call plug#end()


let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}
let g:airline#extensions#ale#enabled = 1
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '💣' 
let g:ale_sign_warning = '⚠'
let g:ale_linter_aliases = {'jsx': ['css', 'javascript']}
let g:ale_linters = {'jsx': ['stylelint', 'eslint']}


nmap <C-p> :FZF<CR>

augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
augroup END
