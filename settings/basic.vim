"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"	NVIM SETTING
"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

"SHELLの設定
if exists('$SHELL')
    set shell=$SHELL
else
    set shell=/bin/sh
endif
set sh=zsh

if &compatible
	set nocompatible
endif

"########## 標準設定 ##########
"文字設定
set termencoding=utf-8
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8,cp932
" set fenc=utf-8
" set enc=utf-8
" 非表示文字を表示する
set listchars=tab:>-,trail:~,extends:>,precedes:<,nbsp:+
set list


"autocmd
autocmd quickfixcmdpost *grep* cwindow
autocmd quickfixcmdpost *make* copen
autocmd FileType c,cpp,cc,cxx,h,hpp,hxx,hh,perl,html,py,sh,jar,php,rs set cindent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType urdf setlocal ts=2 sts=2 sw=2 expandtab
au BufNewFile,BufRead *.c++ set tags+=$HOME/c++.tags


"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"   Netrw (default file browser) Setting
"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
filetype indent plugin on
let g:netrw_banner = 0
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

