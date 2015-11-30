if has('gui_running')
    set background=light
else
    set background=dark
endif
set background=dark
set fillchars+=stl:\ ,stlnc:\
set laststatus=2
colorscheme solarized
set incsearch
set ignorecase
set smartcase
set hlsearch
map <F3> :noh<CR>
set number
set splitbelow
set splitright
set timeoutlen=30
map T :TComment<CR>
map <Up> gk
imap <Up> <C-o>gk
map <Down> gj
imap <Down> <C-o>gj
nmap j gj
nmap k gk
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
let g:airline_powerline_fonts = 1
call  pathogen#infect()
syntax on
filetype plugin indent on
set ts=4 sw=4 et
let g:indent_guides_start_level =4
set cm=blowfish2
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
                         \ exe "normal! g`\"" | endif
set noshowmode
set backupdir=~/.backup
set keymap=dvorak
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


nnoremap <silent> <F12> :bn<CR> nnoremap <silent> <S-F12> :bp<CR> " Enable the list of buffers
" let g:airline#extensions#tabline#enabled = 1

" Show just the filename
" let g:airline#extensions#tabline#fnamemod = ':t'

" markdown-preview
let vim_markdown_preview_temp_file = 1

let g:airline_theme='raven'

" word-wrap
set wrap
set linebreak
set nolist " list disables linebreak
set textwidth=79
set formatoptions=lt
let mapleader=","
" Settings for VimEasymotion
" let g:EasyMotion_do_mapping = 0 " Disable default mappings
" map <Space> <Plug>(easymotion-prefix)
" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
let g:EasyMotion_leader_key = '<Leader'
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
" nmap s <Plug>(easymotion-s2)

" Turn on case insensitive feature
" let g:EasyMotion_smartcase = 1

" map <Space> <Plug>(easymotion-prefix)
" JK motions: Line motions
" map <Leader>j <Plug>(easymotion-j)
" map <Leader>k <Plug>(easymotion-k)
