for fpath in split(globpath(g:editor_root . '/settings', '*.vim'), '\n')
  exe 'source' fpath
endfor

for fpath in split(globpath(g:editor_root . '/local', '*.vim'), '\n')
  exe 'source' fpath
endfor
