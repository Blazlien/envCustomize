" general 
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set nu
set clipboard=unnamed
set background=dark
set cursorline

filetype on
augroup uniqSettings
    "the command below execute the script for the specific filetype ruby
    autocmd FileType ruby source ~/.vim/.rbSettings.vim

    "the command below execute the script for the specific filetype python
    autocmd FileType python source ~/.vim/.pySettings.vim
augroup END
