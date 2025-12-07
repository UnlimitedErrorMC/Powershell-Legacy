let g:powershell_legacy#loaded_powershell_legacy =
      \ trim(
      \ substitute(
      \ system('powershell.exe -Version 2 -NoProfile -Command "(Get-Host).Version.Major"'), nr2char(0xfeff), '', ''))