" vim: ai:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('s:CmptrClr_loaded_html') && s:CmptrClr_loaded_html)
  finish | endif

let s:CmptrClr_loaded_html = get(s:, 'CmptrClr_loaded_html', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if !g:CmptrClr_use_default_hl[&filetype] | call s:SourceHlFile() | endif

hi! link htmlArg            type
hi! link htmlComment        comment

" XML doesn't have the samething, so we don't treat it as special
hi! link htmlEndTag         htmlTag

hi! link htmlH2             htmlTitle
hi! link htmlH3             htmlTitle
hi! link htmlLink           underlined
hi! link htmlTag            delimiter
hi! link htmlTagName        tagName
hi! link htmlTitle          title
hi! link htmlSpecialChar    specialChar
hi! link htmlSpecialTagName identifier

function! s:SourceHlFile()
  if g:CmptrClr_use_user_hl[&filetype]
    execute 'source' g:CmptrClr_user_hl[&filetype]
  endif
endfunction
