"=================================
" APPEARANCE -- Visual, aesthetic
"=================================

" < Colorscheme / Syntax  >
syntax enable

if(has("termguicolors"))
  set termguicolors
endif

" < Column Visualization > "
" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" < Window / Split > "
" Open new split panes to the right, and bottom
set splitbelow
set splitright

" Ignore whitespace only changes in diff
set diffopt+=iwhite

" let g:nord_italic=1
" let g:nord_underline=1
" let g:nord_italic_comments=1
" let g:nord_comment_brightness=15 
" let g:nord_cursor_line_number_background=1
" colorscheme nord
colorscheme gruvbox 

set noshowmode

" coc.nvim color changes
hi! link CocErrorSign WarningMsg
hi! link CocWarningSign Number
hi! link CocInfoSign Type


" vim:ft=vim
