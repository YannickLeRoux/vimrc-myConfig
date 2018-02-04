" ======= @YannickLeRoux : my .vimrc config for Python and Javascript ===========
execute pathogen#infect()
syntax on
filetype plugin indent on

let g:airline#extensions#tabline#enabled = 1

set mouse=a

" syntax check for python 3
" let g:pymode_python='python3'

colorscheme codeschool

" YOU COMPLETE ME settings

let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

" Ultisnips
let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file

"shortcuts
" move fwd bkw in the buffers
nmap<C-n> :bn<CR>
nmap<C-p> :bp<CR>

" display the tag window or not
nmap<F2> :TagbarToggle<CR>

" hide a window
nmap<F3> :hide<CR>

" copy/paste
vmap<F4> :w !pbcopy<CR>
nmap<F5> :r !pbpaste<CR>
nmap<F6> :%w !pbcopy<CR>

" Toggle Nerdtree
nmap <F10> :NERDTreeToggle<CR>


set omnifunc=syntaxcomplete#Complete

set number

" configuration Python-Mode

" run the python code
" let g:pymode_run = 1
" let g:pymode_run_bind = '<leader>r'

" set breakpoint
" let g:pymode_breakpoint = 1
" let g:pymode_breakpoint_bind = '<leader>b'

" Auto open cwindow (quickfix) if any errors have been found
" let g:pymode_lint_cwindow = 1

" use zo and zc to open/close folds
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set foldmethod=indent |

au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

" change emmet leader key 
let g:user_emmet_leader_key = '<c-b>'
" only activate emmet for html and css files
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" add new pairs to autopairs
" let g:AutoPairs['<']='>'
" let g:AutoPairs['%']='%'

" enable JSX syntax highlighting for .js files
let g:jsx_ext_required = 0

" enable flow syntax checking for javascript
let g:javascript_plugin_flow = 1

" Enables syntax highlighting for JSDocs
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

" toggle concealin mode on/off -> javascript
map <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>

set guifont=Menlo\ Regular:h14


"============= PLUG INS ========================

" installed plug ins on Feb 2018
" auto-pairs		supertab		vim-addon-mw-utils	vim-jsx			youcompleteme
" colorschemes		syntastic		vim-commentary		vim-snipmate
" django.vim		tagbar			vim-fugitive		vim-snippets
" emmet-vim		tlib_vim		vim-indent-guides	vimairline
" nerdtree		ultisnips		vim-javascript		xmledit
