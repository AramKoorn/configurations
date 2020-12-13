syntax on


autocmd FileType cpp nnoremap     <leader>rm    :!g++ -g --std=c++17 % -o %:r<CR>
" autocmd FileType cpp nnoremap   <leader>rm    :set makeprg=g++<CR>:make % -o %:r<CR>
autocmd FileType cpp nnoremap     <leader>rr    :!./%:r<CR>
autocmd FileType cpp nnoremap     <leader>rt    :!for f in %:r.*.test; do echo "TEST: $f"; ./%:r < $f; done<CR>


inoremap " ""<left>

set pastetoggle=<F2>
set clipboard=unnamed

" line numbers
:set number
:set nu
set tabstop=2
set autoindent
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set smartcase
":set modifiable
set laststatus=2

autocmd vimenter * ++nested colorscheme gruvbox
set pastetoggle=<F2>
set clipboard=unnamedplus

execute pathogen#infect()
filetype plugin indent on

syntax enable

autocmd vimenter * NERDTree
nmap <F6> :NERDTreeToggle<CR>
:set bg=dark
set t_Co=256

let mapleader = ","


let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:syntastic_swift_checkers = ['swiftpm', 'swiftlint']

map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

autocmd BufWritePost *.py call Flake8()

noremap <leader>/ :Commentary<cr>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip   

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
