try
  " Enable extensions
  " let g:airline_extensions = ['branch', 'hunks', 'coc']
  let g:airline#extensions#branch#enabled = 1  
  let g:airline#extensions#coc#enabled = 1  
  let g:airline#extensions#hunks#enabled = 1  

  " Update section z to just have line number
  let g:airline_section_z = airline#section#create(['linenr']) 

  " Do not draw separators for empty sections
  let g:airline_skip_empty_sections = 1

  " Intelligently make buffer names unique?
  let g:airline#extensions#tabline#formatter = 'unique_tail'

  let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'z']]

  let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
  let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'

  " Disable vim-airline in preview mode
  let g:airline_exclude_preview = 1

  " Enable powerline fonts
  let g:airline_powerline_fonts = 1

  " Enable caching of syntax highlihgting groups
  let g:airline_highlighting_cache = 1

  " Define custom airline symbols
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
  " let g:airline_left_sep = '❯'
  " let g:airline_right_sep = '❮'
  
  " <CUSTOM SYMBOLS> "
  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.crypt = '🔒'
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.maxlinenr = ''
  let g:airline_symbols.maxlinenr = '㏑'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.spell = 'Ꞩ'
  let g:airline_symbols.notexists = 'Ɇ'
  let g:airline_symbols.whitespace = 'Ξ'

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.maxlinenr = ''

  " Don't show git changes to current file in airline
  " let g:airline#extensions#hunks#enabled=0

catch
  echo 'Airline is not installed. It should work after running :PlugInstall'
endtry

" vim:ft=vim
