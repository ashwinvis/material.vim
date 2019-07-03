let s:gui = {}

let s:gui.background = { 'darker': '#263238', 'lighter': '#FAFAFA', 'palenight': '#292D3E', 'ocean': '#0F111A'  }
let s:gui.foreground = { 'darker': '#ECEFF1', 'lighter': '#666666', 'palenight': '#A6ACCD', 'ocean': '#A6ACCD'  }
let s:gui.none       = { 'darker': 'NONE',    'lighter': 'NONE',    'palenight': 'NONE'   , 'ocean': 'NONE'     }
let s:gui.selection  = { 'darker': '#455A64', 'lighter': '#CCEAE7', 'palenight': '#434A6C', 'ocean': '#292D3E'  }
let s:gui.line       = { 'darker': '#212121', 'lighter': '#EAEFF0', 'palenight': '#191919', 'ocean': '#191919'  }
let s:gui.comment    = { 'darker': '#5D818E', 'lighter': '#90A4AE', 'palenight': '#676E95', 'ocean': '#525975'  }

let s:gui.red          = { 'darker': '#FF5370', 'lighter': '#E53935', 'palenight': '#FF5370', 'ocean': '#FF5370'  }
let s:gui.darker_red     = { 'darker': '#B71C1C', 'lighter': '#E53935', 'palenight': '#FF5370', 'ocean': '#FF5370'  }
let s:gui.pink         = { 'darker': '#F07178', 'lighter': '#FF5370', 'palenight': '#F07178', 'ocean': '#F07178'  }
let s:gui.orange       = { 'darker': '#F78C6C', 'lighter': '#F76D47', 'palenight': '#F78C6C', 'ocean': '#F78C6C'  }
let s:gui.lighter_yellow = { 'darker': '#FFE57F', 'lighter': '#FFAD13', 'palenight': '#FFE57F', 'ocean': '#FFE57F'  }
let s:gui.yellow       = { 'darker': '#FFCB6B', 'lighter': '#FFAD13', 'palenight': '#FFCB6B', 'ocean': '#FFCB6B'  }
let s:gui.green        = { 'darker': '#C3E88D', 'lighter': '#82A550', 'palenight': '#C3E88D', 'ocean': '#C3E88D'  }
let s:gui.teal         = { 'darker': '#004D40', 'lighter': '#CCEAE7', 'palenight': '#004D40', 'ocean': '#004D40'  }
let s:gui.lighter_teal   = { 'darker': '#69F0AE', 'lighter': '#73B6B0', 'palenight': '#69F0AE', 'ocean': '#69F0AE'  }
let s:gui.pale_blue    = { 'darker': '#B2CCD6', 'lighter': '#8796B0', 'palenight': '#B2CCD6', 'ocean': '#B2CCD6'  }
let s:gui.cyan         = { 'darker': '#89DDFF', 'lighter': '#39ADB5', 'palenight': '#89DDFF', 'ocean': '#89DDFF'  }
let s:gui.blue         = { 'darker': '#82AAFF', 'lighter': '#6182B8', 'palenight': '#82AAFF', 'ocean': '#82AAFF'  }
let s:gui.purple       = { 'darker': '#C792EA', 'lighter': '#7C4DFF', 'palenight': '#C792EA', 'ocean': '#C792EA'  }
let s:gui.violet       = { 'darker': '#BB80B3', 'lighter': '#945EB8', 'palenight': '#BB80B3', 'ocean': '#BB80B3'  }
let s:gui.brown        = { 'darker': '#AB7967', 'lighter': '#AB7967', 'palenight': '#C17E70', 'ocean': '#C17E70'  }

if !exists('g:material_theme_style')
  let g:material_theme_style='default'
endif

function! s:gui(color)
  if &background == "lighter"
    return a:color['lighter']
  else
    if g:material_theme_style == 'default'
      return a:color['darker']
    else
      return a:color[g:material_theme_style]
    endif
  endif
endfunction

let g:airline#themes#material#palette = {}
let s:modified = { 'airline_c': [ s:gui(s:gui.yellow), s:gui(s:gui.selection), 215, '', '' ] }

" Normal mode
let s:N1 = [ s:gui(s:gui.background) , s:gui(s:gui.cyan) , "" , ""  ]
let s:N2 = [ s:gui(s:gui.foreground) , s:gui(s:gui.selection) , "" , ""  ]
let s:N3 = [ s:gui(s:gui.foreground) , s:gui(s:gui.selection) , "" , ""  ]
let g:airline#themes#material#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#material#palette.normal_modified = s:modified

" Insert mode
let s:I1 = [ s:gui(s:gui.background) , s:gui(s:gui.blue) , "" , ""  ]
let s:I2 = [ s:gui(s:gui.foreground) , s:gui(s:gui.selection) , "" , ""  ]
let s:I3 = [ s:gui(s:gui.foreground) , s:gui(s:gui.selection) , "" , ""  ]
let g:airline#themes#material#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#material#palette.insert_modified = s:modified

" Visual mode
let s:V1 = [ s:gui(s:gui.background) , s:gui(s:gui.green) , "" , ""  ]
let s:V2 = [ s:gui(s:gui.foreground) , s:gui(s:gui.selection) , "" , ""  ]
let s:V3 = [ s:gui(s:gui.foreground) , s:gui(s:gui.selection) , "" , ""  ]
let g:airline#themes#material#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#material#palette.visual_modified = s:modified

" Replace mode
let s:R1 = [ s:gui(s:gui.background) , s:gui(s:gui.yellow) , "" , ""  ]
let s:R2 = [ s:gui(s:gui.foreground) , s:gui(s:gui.selection) , "" , ""  ]
let s:R3 = [ s:gui(s:gui.foreground) , s:gui(s:gui.selection) , "" , ""  ]
let g:airline#themes#material#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#material#palette.replace_modified = s:modified

" Inactive mode
let s:IN1 = [ s:gui(s:gui.comment) , s:gui(s:gui.line) , "" , ""  ]
let s:IN2 = [ s:gui(s:gui.comment) , s:gui(s:gui.line) , "" , ""  ]
let s:IN3 = [ s:gui(s:gui.comment) , s:gui(s:gui.line) , "" , ""  ]
let g:airline#themes#material#palette.inactive = airline#themes#generate_color_map(s:IN1, s:IN2, s:IN3)
let g:airline#themes#material#palette.inactive_modified = s:modified

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 = [ s:gui(s:gui.comment) , s:gui(s:gui.background) , "" , ""  ]
let s:CP2 = [ s:gui(s:gui.comment) , s:gui(s:gui.background) , "" , ""  ]
let s:CP3 = [ s:gui(s:gui.comment) , s:gui(s:gui.background) , "" , ""  ]

let g:airline#themes#material#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)
