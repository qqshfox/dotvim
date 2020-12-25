set updatetime=100
if get(g:, 'colors_name', 'unknown') == 'solarized'
  highlight! link SignColumn LineNr
endif
