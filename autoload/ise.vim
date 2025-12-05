function! ise#ps2only() abort
  let l:cmd = 'powershell -NoProfile -Command $PSVersionTable . nr2char(46) . PSVersion . nr2char(46) . Major'
  let l:out = system(l:cmd)
  let l:ver = substitute(l:out, '\n', '', 'g')

  if l:ver ==# '2'
    return l:ver
  endif

  echoerr 'This script requires PowerShell 2. Current version: ' . l:ver
  return
endfunction
