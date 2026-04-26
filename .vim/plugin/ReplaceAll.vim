if exists('g:loaded_mass_replace')
    finish
endif
let g:loaded_mass_replace = 1

" Notice we pass '<bang>' as the first argument here
command! -nargs=+ -bang ReplaceAll call s:MassReplace('<bang>', <f-args>)

" The function catches the bang, then search, then replace
function! s:MassReplace(bang, search, replace, ...)
    " Default to current file (%) if no path is given
    let l:pattern = a:0 >= 1 ? a:1 : expand('%:p')
    
    " If bang (!) is used, l:confirm is empty. Otherwise, it's 'c'
    let l:confirm = a:bang == '!' ? '' : 'c'

	let l:silent = a:bang == '!' ? 'silent! ' : ''
    
    try
        execute 'silent vimgrep /' . a:search . '/gj ' . l:pattern
    catch
        echo "No matches found for '" . a:search . "' in " . l:pattern
        return
    endtry

    " Notice we inject l:confirm here instead of a hardcoded 'c'
    execute l:silent 'cfdo %s/' . a:search . '/' . a:replace . '/g' . l:confirm . 'e | update'
    cclose
    
    redraw
    echo "Successfully replaced '" . a:search . "' with '" . a:replace . "' in " . l:pattern . "!"
endfunction
