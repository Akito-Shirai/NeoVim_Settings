" ######################### Search/Replacement #########################
set ignorecase "大文字小文字関係なく検索する"
set smartcase "検索文字列に大文字が含まれている場合は区別して検索"
set wrapscan "検索時に最後まで行ったら最初に戻る"
set hlsearch
hi Search ctermbg=190 "背景"
hi Search ctermfg=White "文字"
set incsearch
set inccommand=split "インタラクティブに変更"



" ######################### Indent #########################
set smartindent
set smarttab
"set noexpandtab
set expandtab "softtabstop, shiftwidthで設定されている値分のスペースが挿入された時に、挿入されたスペース数がtabstopに達してもタブに変換されない"
set tabstop=4
set shiftwidth=4
set softtabstop=4



" ######################### Complement #########################
set completeopt=menuone,noinsert "対象が1件でも補完ウィンドウを表示"
set wildmode=list:longest " コマンドラインの補完
set infercase "補完時に大文字小文字を区別しない"
set wildmenu "コマンドの補完を有効に"



" ######################### Operation #########################
set hidden
set clipboard+=unnamedplus "クリップボードにコピーできるようにする"
set backspace=indent,eol,start "backspaceで様々な文字を消せるようにする"
set textwidth=0 "自動改行する文字数"
set nostartofline
set virtualedit=onemore
set scrolloff=5



" ######################### Log #########################
set history=500 "保持するコマンド履歴数"
set noswapfile "swapファイルを保存しない"
set nobackup
"set nowritebackup "writebackupを保存しない"
set writebackup
set viminfo= "viminfoファイルに保存しない"



" ######################### Other #########################
set t_Co=256
set fencs=iso-2022-jp,enc-jp,cp932
filetype plugin indent on "ファイルタイプの検索とプラグインをONにする"
set fileformats=unix,dos,mac
" set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
set guifont=DroidSansMono\ Nerd\ Font\ 13
set guifontwide=DroidSansMono\ Nerd\ Font\ 13
set showcmd
set autoread
set autoindent
