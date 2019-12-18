" pathogen add-on manager
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

set number
set confirm

if has('autocmd') " ignore this section if your vim does not support autocommands
    " latex-live-preview stuff
    autocmd FileType tex setl updatetime=1
    " let g:livepreview_previewer = 'evince'
    " automatically reload vimrc upon save
    augroup reload_vimrc
        autocmd!
        autocmd! BufWritePost $MYVIMRC,$MYGVIMRC nested source %
    augroup END
endif
