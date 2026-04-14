" --- Basic Recognition ---
syntax on                   " Enable syntax highlighting (colors)
filetype plugin indent on   " Enable file type detection and loading of language-specific plugins

" --- C-Specific Indentation ---
set cindent                 " Use C-style indentation (smarter than standard autoindent)

" --- Visuals ---
set number                  " Show line numbers
set ruler                   " Show cursor position in the bottom right
set showmatch               " Highlight matching parenthesis/brackets when your cursor is on one

" --- 42 School / Norm Settings ---
" The Norm usually requires real tabs, not spaces.
set tabstop=4               " A tab is displayed as 4 spaces wide
set shiftwidth=4            " Indents are 4 spaces wide
set noexpandtab             " Use real tabs (do NOT convert tabs to spaces)
set colorcolumn=80

" --- Searching ---
set incsearch               " Search as you type
set hlsearch                " Highlight search matches

set laststatus=2      " Tells Vim to ALWAYS show the status line
set statusline=\ %F\  " Tells the status line to show the Full file path

" --- Autocomplete Setup ---
set completeopt=menu,menuone,noselect

" These three mappings cover every way a Mac Terminal sends Ctrl+Space
inoremap <C-Space> <C-n>
inoremap <C-@> <C-n>
inoremap <Nul> <C-n>

" These make the arrow keys work ONLY when the menu is visible
inoremap <expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>   pumvisible() ? "\<C-p>" : "\<Up>"

" Use Enter to confirm the selection from the menu
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

nnoremap <leader>r :ReplaceAll
