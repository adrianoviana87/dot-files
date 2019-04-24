" ****** status line ******
set laststatus=2

function! MySetStatus() abort
  set statusline=
  set statusline+=%9*
  set statusline+=%6*
  set statusline+=\ 
  set statusline+=%{StatuslineMode()}
  set statusline+=\ 
  set statusline+=%5*
  set statusline+=
  set statusline+=%6*
  set statusline+=
  set statusline+=\ 
  set statusline+=%t
  set statusline+=\ 
  set statusline+=%5*
  set statusline+=
  set statusline+=%6*
  set statusline+=
  set statusline+=\ 
  set statusline+=%{MyStatusReadOnly()}
  set statusline+=\ 
  set statusline+=%5*
  set statusline+=
  set statusline+=%6*
  set statusline+=
  set statusline+=\ 
  set statusline+=%{MyStatusModified()}
  set statusline+=\ 
  set statusline+=%5*
  set statusline+=
  set statusline+=%6*
  set statusline+=
  set statusline+=%y
  set statusline+=%5*
  set statusline+=
  set statusline+=%=
  set statusline+=
  set statusline+=%5*
  set statusline+=%6*
  set statusline+=\ 
  set statusline+=
  set statusline+=%l
  set statusline+=/
  set statusline+=%L
  set statusline+=\ 
  set statusline+=
  set statusline+=%5*
  set statusline+=
  set statusline+=%6*
  set statusline+=\ 
  set statusline+=%P
  set statusline+=\ 
  set statusline+=
  set statusline+=%5*
  set statusline+=
  set statusline+=%6*
  set statusline+=\ 
  set statusline+=%{MyStatusLinter()}
  set statusline+=\ 
  hi User9 ctermbg=black ctermfg=white guibg=black guifg=white
  hi User6 ctermbg=white ctermfg=black guibg=white guifg=black
  hi User5 ctermbg=black ctermfg=white guibg=black guifg=white

endfunction
function! MyStatusLinter() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? '' : printf(
    \   ' %d  %d',
    \   all_non_errors,
    \   all_errors
    \)
endfunction

function! MyStatusReadOnly() abort
  if &readonly || !&modifiable
    return ''
  else
    return ''
endfunction

function! MyStatusModified() abort
  if &modified
    return ''
  else
    return ''
endfunction

function! StatuslineMode()
  let l:mode=mode()
  if l:mode==#"n"
    " normal
    return ""
  elseif l:mode==?"v"
    " visual
    return ""
  elseif l:mode==#"i"
    " insert
    return ""
  elseif l:mode==#"R"
    " replace
    return ""
  elseif l:mode==?"s"
    " select
    return ""
  elseif l:mode==#"t"
    " terminal
    return ""
  elseif l:mode==#"c"
    " command
    return ""
  elseif l:mode==#"!"
    " shell
    return ""
  endif
endfunction

