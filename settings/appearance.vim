" ######################### Color #########################
" colorscheme nightfox "nightfox"
" colorscheme iceberg "iceberg"
colorscheme tokyonight "tokyonight"
" colorscheme rose-pine
" let g:onedark_config = {'style': 'deep'}
" colorscheme onedark

syntax enable   "カスタムのシンタックスハイライトも有効
" syntax on      "カスタムのシンタックスハイライトは無効
filetype on
"set background=dark

"背景透明化
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none 


" ######################### VISUAL #########################
set termguicolors	"True Color"
set title
set number
set wrap
set showmatch "()"
set ruler
set list "不可視文字(改行記号など)の可視化
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲ " デフォルト不可視文字をUnicodeできれいに
set matchtime=3	"対応()のハイライト表示を3sにする"
set cursorline "カーソル行の色付け"
set noerrorbells
set visualbell t_vb=
set laststatus=2
set wildmenu
set wildmode=full:list
set statusline=%<(%{expand('%:p:h')}/%{expand('%:p:t')})\ %M%M%M%r%w%h\ \ %=\ ENC[%{&fenc!=''?&fenc:&enc}]\ FMT[%{&ff}]\ [%v][%l/%L][%p%%]

set showtabline=2
set shortmess=a
set cmdheight=2
