":autocmd FileType * set noexpandtab
":set tabstop=4
":set shiftwidth=4
:set background=dark
:set number
:set mouse=a

:set smartindent noexpandtab tabstop=4 shiftwidth=4 softtabstop=-1

" Writing mode for md files
autocmd BufRead,BufNewFile *.md noremap  <buffer> <silent> k gk
autocmd BufRead,BufNewFile *.md noremap  <buffer> <silent> j gj
autocmd BufRead,BufNewFile *.md noremap  <buffer> <silent> 0 g0
autocmd BufRead,BufNewFile *.md noremap  <buffer> <silent> $ g$
autocmd BufRead,BufNewFile *.md onoremap <silent> j gj
autocmd BufRead,BufNewFile *.md onoremap <silent> k gk

":inoremap <Nul> <C-n>


" Vundle
":set nocompatible
":filetype off
":set rtp+=~/.vim/bundle/Vundle.vim
":call vundle#begin()
"
"" This is the Vundle package, which can be found on GitHub.
"" For GitHub repos, you specify plugins using the
"" 'user/repository' format
":Plugin 'VundleVim/Vundle.vim'
"":Plugin 'Valloric/YouCompleteMe'
":Plugin 'arrufat/vala.vim'
"" YCM Config
":let g:ycm_key_list_select_completion = ['<C-n>', '<C-j>']
":let g:ycm_key_list_previous_completion = ['<C-N>', '<C-k>']
":let g:ycm_key_invoke_completion = '<Nul>'
"
":call vundle#end()
"" Now we can turn our filetype functionality back on
"filetype plugin indent on
"filetype plugin on
"
":set runtimepath^=~/.vim/bundle/ctrlp.vim
