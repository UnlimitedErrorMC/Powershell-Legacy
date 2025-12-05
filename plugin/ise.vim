set nobomb

if exists('g:loaded_ise')
  finish
endif
let g:loaded_ise = 1

" Expose a command to check PowerShell version
command! PS2Check echo ise#ps2only()