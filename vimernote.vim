if exists('loaded_vimernote')
  finish
endif
let loaded_vimernote = 1

" Useragent
let s:user_agent = 'Vimernote 0.0.1 2012-07-10'

" Get the notebook in use
function! s:get_notebook_name()
  return exists('g:notebook_name') ? g:notebook_name : "Vimernote"
endfunction

" Display an error message in the message area.
function! s:errormsg(msg)
    redraw
    echohl ErrorMsg
    echomsg a:msg
    echohl None
endfunction

" Display a warning message in the message area.
function! s:warnmsg(msg)
    redraw
    echohl WarningMsg
    echo a:msg
    echohl None
endfunction

function! s:getBuffContents()
  return (join(getline(1,'$'), "\n"))
endfunction

command PrintScreen :call <SID>getBuffContents()
