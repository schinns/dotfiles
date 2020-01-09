call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" theme
Plug 'vim-airline/vim-airline'

" reasonML langauge support
Plug 'reasonml-editor/vim-reason-plus'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" for neovim
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" for vim 8 with python
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  let g:python3_host_prog = "/Library/Frameworks/Python.framework/Versions/3.7/bin/python3"
endif

" javascript & jsx
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'

" elixir
Plug 'elixir-editors/vim-elixir'

" dart
Plug 'dart-lang/dart-vim-plugin'

"autocomplete
" Plug 'lifepillar/vim-mucomplete'
"git diff
Plug 'airblade/vim-gitgutter'
" fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" sml development environment
Plug 'jez/vim-better-sml'
" tmux interaction
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

" =========== Language Server =======

let g:LanguageClient_serverCommands = {
    \ 'reason': ['/Users/ben.schinn/.vim/reason-language-server/reason-language-server.exe'],
    \ }

" enable autocomplete
let g:deoplete#enable_at_startup = 1

" ============ TEXT =================
"
" Use spaces instead of tabs
set expandtab

set smarttab

" 1 tab == 2 spaces
set tabstop=2       " num of visual space per <TAB> char
set softtabstop=2   " num of spaces for TAB when editing, useful for backspace
set shiftwidth=0

" Linebreak on 500 characters
set linebreak
set tw=500
set wrap
set fo+=mB " Line break support for asian language
" Indentation
set ai "Auto indent
set si "Smart indent
set nowrap " do not wrap lines

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" ============ TEXT =================

" ============ NERD TREE ============

" : autocmd vimenter * NERDTree
map <C-\> : NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden= 1
" ============ NERD TREE ============
map <leader>]] :NERDTreeToggle<cr>

" ============ UI ===================
set display=lastline
set laststatus=2    " To display the status line always
set cursorline      " hilight current line

" line number
set number
set numberwidth=4
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:gitgutter_enabled = 1
let g:gitgutter_async=0
set nocursorline
" ============ UI ===================
"
" mapping tab switch
map <S-Right> :tabn<CR>
map <S-Left>  :tabp<CR>

" fuzzy finder
nmap <silent> <leader>pp :GFiles<cr>
" list buffer
nmap <leader>fi :ls<cr>:b<space>
"autocomplete
" set completeopt+=noinsert
"  serach
set incsearch
set hlsearch

" let g:mucomplete#can_complete = {}
" let g:mucomplete#enable_auto_at_startup = 1
" let g:mucomplete#chains = {'default': ['omni']}
let g:javascript_plugin_flow = 1

set t_Co=256
