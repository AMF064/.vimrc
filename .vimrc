" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2019 Dec 17
"
" To use it, copy it to
"	       for Unix:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"	 for MS-Windows:  $VIM\_vimrc
"	      for Haiku:  ~/config/settings/vim/vimrc
"	    for OpenVMS:  sys$login:.vimrc

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

"Netrw settings
let g:netrw_banner = 0  "Disable banner
let g:netrw_browse_split = 4 "Open in prior window

"Tabs
set tabstop=4 softtabstop=4
set smartindent
set expandtab
set shiftwidth=4

"Cursor and cursor line
set guicursor=

"Search for local vimrc
set exrc

"Syntax
syntax on

"Colorscheme
colorscheme desert

" Relative numbers
set number relativenumber

"Incremental search
set incsearch

"Highlight search: off
set nohls

"Scrolloff
set scrolloff=8

"Hidden buffer
set hidden

"No backup file
set nobackup

"Split windows
set splitbelow splitright

"Tab-completion for file-related tasks
set path+=**

"Display matching files with tab complete
set wildmenu

"Autocompletion
set wildmode=longest,list,full

"Clipboard
set cb=unnamedplus

"Keymaps
let mapleader = " "
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-t> :tabnew<CR>
nnoremap <leader>n :tabn<CR>
nnoremap <leader>p :tabp<CR>
nnoremap <leader>pv :Exp<CR>
nnoremap <leader>l :buffers<CR>
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <M-t> :terminal<CR>
