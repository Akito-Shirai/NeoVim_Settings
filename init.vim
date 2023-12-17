"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"	Plugin
"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"Manager
augroup my-coc-autocmds
  autocmd!
  autocmd VimEnter * silent! CocStart
augroup END

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    \ >/dev/null 2>&1
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"Auto Install
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC

"Loading Plugin (Vscode or Else)
if exists('g:vscode')
    " VScode extension
    
    "Plugin Setting
    call plug#begin('~/.config/nvim/plugged')
        Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    call plug#end()
else
    "Plugin Setting
    call plug#begin('~/.config/nvim/plugged')
        "//Coc
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        "//Treesitter
        Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
        "//ColorScheme
        Plug 'joshdick/onedark.vim'
        Plug 'EdenEast/nightfox.nvim'
        "//Airline
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        "//Other
        Plug 'tpope/vim-commentary'
        Plug 'preservim/nerdtree'
        Plug 'ryanoasis/vim-devicons'
        Plug 'sain/gruvbox-material'
        Plug 'sainnhe/gruvbox-material'
        Plug 'Yggdroot/indentLine'
        Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
        Plug 'jiangmiao/auto-pairs'
        Plug 'tyru/caw.vim'
        Plug 'mbbill/undotree'
        " Plug 'OmniSharp/omnisharp-vim'
        " Plug 'dense-analysis/ale'
    call plug#end()
endif


"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"	NVIM SETTING
"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
if &compatible
	set nocompatible
endif
"外部ファイル読み込み
runtime! settings/option.vim
runtime! settings/keymap.vim

"標準設定
colorscheme nightfox "nightfox"
" colorscheme onedark "onedark"
syntax enable
"syntax on
filetype on

"背景透明化
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none 

"autocmd
autocmd quickfixcmdpost *grep* cwindow
autocmd quickfixcmdpost *make* copen
autocmd FileType c,cpp,cc,cxx,h,hpp,hxx,hh,perl,html,py,sh,jar,php,rs set cindent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType urdf setlocal ts=2 sts=2 sw=2 expandtab
au BufNewFile,BufRead *.c++ set tags+=$HOME/c++.tags


"CocSetting
let g:coc_global_extensions = ['coc-json', 'coc-lists', 'coc-snippets', 'coc-highlight', 'coc-explorer']
let g:coc_data_home = '/Users/akito/.config/coc/extensions'
let g:loaded_perl_provider = 0

hi CocErrorSign ctermfg=red  guibg=red
hi CocErrorFloat ctermfg=white ctermbg=red
hi CocWarningSign ctermfg=white ctermbg=yellow
" hi CocMenuSel guifg=#cccccc guibg=#2a3d75
" hi CocFloating guifg=#c29976 guibg=#001622
hi CocMenuSel guifg=#ffd700 guibg=#2a3d75
hi CocFloating guifg=#20b2aa guibg=#001622


"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"	Airline Setting
"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"///Powerline系フォントを利用する
" let g:airline_solarized_bg='dark'
let g:airline_theme = 'papercolor'
let g:airline_powerline_fonts = 1
" let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1 " タブラインを表示
let g:airline#extensions#tabline#buffer_idx_mode = 1 " タブ番号表示
let g:airline#extensions#whitespace#mixed_indent_algo = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" ///unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.maxlinenr = '☰'
"let g:airline_symbols.maxlinenr = ''
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
"let g:airline_symbols.spell = 'Ꞩ'
"let g:airline_symbols.notexists = '∄'
"let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"   Netrw (default file browser) Setting
"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
filetype indent plugin on
let g:netwr_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 30
let g:netrw_sizestyle = "H"
let g:netrw_timefmt = "%Y/%m/%d(%a) %H:%M:%S"
let g:netrw_preview = 1


"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"	DevIcon Setting
"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"/// DevIcon Setting
"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ""
let g:WebDevIconsUnicodeDecorateFolderNodes = v:true
if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
endif


"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"	IndentLine Setting (yggdroot/indentLine)
"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
" let g:indentLine_setColors = 0
let g:IndentLine_color_term=239
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_char = 'c'
" let g:indentLine_char = '┆'
let g:indentLine_fileTypeExclude = ['help', 'nerdtree', 'calendar', 'thumbnail', 'tweetvim']


"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"	TREESITTER Setting
"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
	"lua",
	"rust",
    "tsx",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "swift",
    "html",
    "scss",
	"c",
	"cpp",
	"c_sharp"
  },
}
EOF


"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"	OmniSharp Setting
"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
" let g:OmniSharp_server_stdio = 1
" let g:OmniSharp_selector_ui = 'vertical'
" let g:OmniSharp_popup_position = 'cursor'
" let g:OmniSharp_highlight_types = 1
" let g:OmniSharp_highlight_types_style = 'Underline'
" let g:OmniSharp_popup_options = ''
" let g:OmniSharp_options = {}
" let g:OmniSharp_autoselect_popup = 0
" let g:OmniSharp_want_snippet = 1
" let g:OmniSharp_ask_before_startup = 0
" let g:OmniSharp_log_level = 1
" let g:OmniSharp_msbuild_path = '/usr/local/share/dotnet/x64/sdk/7.0.202/MSBuild.dll' "MSBuildのパスを指定する
" let g:OmniSharp_config_file = expand('~/.omnisharp/omnisharp.json') "omnisharp.jsonのパスを指定する
" let g:OmniSharp_server_use_mono = 1
" let g:ale_linters = {'cs': ['OmniSharp']}
" let b:ale_linters = ['cs', 'flow-language-server']


"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"	Undo 永続化
"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
silent !mkdir ~/.vim/undo -p >/dev/null 2>&1
if has('persistent_undo')
  set undodir=~/.vim/undo
  set undofile
endif
nnoremap <F5> :UndotreeToggle<CR>


""////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"	autopep8 (shift + fで実行)
"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function! Preserve(command)
    " Save the last search.
    let search = @/
    " Save the current cursor position.
    let cursor_position = getpos('.')
    " Save the current window position.
    normal! H
    let window_position = getpos('.')
    call setpos('.', cursor_position)
    " Execute the command.
    execute a:command
    " Restore the last search.
    let @/ = search
    " Restore the previous window position.
    call setpos('.', window_position)
    normal! zt
    " Restore the previous cursor position.
    call setpos('.', cursor_position)
endfunction

function! Autopep8()
    call Preserve(':silent %!autopep8 -')
endfunction
autocmd FileType python nnoremap <S-f> :call Autopep8()<CR>


""////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"	その他関数
"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"///C++のコードフォーマットの自動実行
" function! s:clang_format()
    " let now_line = line(".")
    " exec ":%! clang-format"
    " exec ":" . now_line
" endfunction

" if executable('clang_format')
    " augroup cpp_clang_format
        " autocmd!
        " autocmd BufWrite,FileWritePre,FileAppendPre *.[ch]pp call s:clang_format()
    " augroup END
" endif

