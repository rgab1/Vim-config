" --- Remove Trailing Whitespace ---
command! Trim call s:TrimWhitespace()

function! s:TrimWhitespace()
    " Save your current cursor position and screen view
    let l:save = winsaveview()
    
    " Delete trailing spaces silently
    " \s\+ matches one or more spaces/tabs
    " $ ensures it's at the end of the line
    " e prevents an error message if there's no whitespace to remove
    silent! %s/\s\+$//e
    
    " Restore your cursor exactly where it was
    call winrestview(l:save)
    
    redraw
    echo "Trailing whitespace destroyed."
endfunction
