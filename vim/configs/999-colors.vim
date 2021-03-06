let base16colorspace=256

if filereadable(expand("~/.vimrc_background"))
  source ~/.vimrc_background
  let g:airline_theme='oceanicnext'
endif

if has('nvim')
  color OceanicNext
  let g:airline_theme='oceanicnext'
else
  color codedark
  let g:airline_theme='codedark'
endif

let g:base16_transparent_background = 1


