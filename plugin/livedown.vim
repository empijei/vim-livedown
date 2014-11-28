if !exists('g:livedown_open')
  let g:livedown_open = 1
endif

if !exists('g:livedown_port')
  let g:livedown_port = 1337
endif

function! LivedownPreview()
  call system("livedown start " . expand('%:p') . 
        \ (g:livedown_open ? " --open" : "") .
        \ " --port " . g:livedown_port .
        \ " &")
endfunction

function! LivedownKill()
  call system("livedown stop --port " . g:livedown_port . " &")
endfunction