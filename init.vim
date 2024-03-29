"
"plugins
"
call plug#begin()
" coc language engine plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'lervag/vimtex'
call plug#end()

" 
" plugin configuration
"

" configure airline bar
let g:airline_theme = "hybrid"

" configure coc
" allow for tab completion and configure
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" confiure hybrid_material themem
if (has("termguicolors"))
  set termguicolors
endif
colorscheme hybrid_material 

" UltiSnips config
let g:UltiSnipsExpandTrigger="<c-c>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"
" =============================
" general configuration options
" =============================
"

syntax on
set number
set relativenumber
set laststatus=2
set expandtab
set ts=4 sw=4
set showmatch
set ruler
set smarttab
set path=.,,**

" configure split key bindings 
set splitbelow splitright

nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j

nnoremap <silent> <C-Left> :vertical resize -3<CR>
nnoremap <silent> <C-Right> :vertical resize +3<CR>
nnoremap <silent> <C-Up> :resize +3<CR>
nnoremap <silent> <C-Down> :resize -3<CR>

" configure tabbing key bindings 

nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> T :tabnew<CR>

" configure spell check
set spell
setlocal spell
set spelllang=en_gb
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u


" disable F1 help
map <F1> <Esc>
imap <F1> <Esc>

" Configure new Coc completion
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <tab> coc#pum#visible() ? coc#pum#confirm() : "\<tab>"
