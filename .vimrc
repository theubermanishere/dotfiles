if has('gui_running')
    set background=light
else
    set background=dark
endif
set background=dark
set fillchars+=stl:\ ,stlnc:\
set laststatus=2
colorscheme solarized
:set incsearch
:set ignorecase
:set smartcase
:set hlsearch
:nmap <F3> :noh<CR>
set number 
set splitbelow
set splitright
set timeoutlen=30
:let mapleader = ","
:map <leader>t :TComment<CR>
:map <Up> gk
:imap <Up> <C-o>gk
:map <Down> gj
:imap <Down> <C-o>gj
:nmap j gj
:nmap k gk
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


    

" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <M-F12> :BufExplorer<CR>
nnoremap <silent> <F12> :bn<CR> nnoremap <silent> <S-F12> :bp<CR> " Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" markdown-preview
let vim_markdown_preview_temp_file = 1


" word-wrap
 set tw=79
 set formatoptions+=t
" augroup vimrc_autocmds
  " autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
  " autocmd BufEnter * match OverLength /\%79v.*/
" augroup END
