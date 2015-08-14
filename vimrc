if !1 | finish | endif

if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" NeoBundle 'Shougo/neocomplete.vim'
" NeoBundle 'Shougo/neosnippet.vim'
" NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/unite-outline'
NeoBundle 't9md/vim-quickhl'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'majutsushi/tagbar'
" NeoBundle 'thinca/vim-ref'

NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'mtscout6/vim-cjsx'
NeoBundle 'leafgarland/typescript-vim'

NeoBundle 'tpope/vim-surround'

NeoBundle 'rking/ag.vim'

let bundlefile=$HOME . '/.vim/vimrc-' . hostname() . '-bundle'
if filereadable(bundlefile)
  exe 'source ' . bundlefile
endif

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

let g:neocomplete#enable_at_startup = 1
let g:vimfiler_as_default_explorer=1

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

let mapleader="\<Space>"

" key mappings
nmap <Leader>m <Plug>(quickhl-manual-this)
xmap <Leader>m <Plug>(quickhl-manual-this)
nmap <Leader>M <Plug>(quickhl-manual-reset)
xmap <Leader>M <Plug>(quickhl-manual-reset)
nmap <Leader>w :w<CR>
nmap <Leader>u :Unite
nmap <Leader>a :Ag<CR>
nmap <Leader>A :Ag
nmap <Leader>e :TagbarToggle<CR>
nmap <Leader>s :source ~/.vimrc<CR>

nmap n nzz
nmap N Nzz


set tabstop=2 shiftwidth=2 sts=2 expandtab
set autoindent smartindent
set hlsearch incsearch

let g:solarized_termcolors=256

" syntax enable
syntax enable
set background=light
colorscheme solarized

let hostfile=$HOME. '/.vim/vimrc-' . hostname()
if filereadable(hostfile)
  exe 'source ' . hostfile
endif
