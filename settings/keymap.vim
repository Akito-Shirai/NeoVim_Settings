
let mapleader = "\<Space>"

"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"	Operation Mapping
"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"Insertモードでjjを入力した際にESC判定
inoremap <silent> jj <Esc>:<C-u>w<CR>
inoremap <silent> JJ <Esc>:<C-u>w<CR>


"########## Window操作系 ##########
" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
" Move window
nmap <Space> <C-w>w
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
" Resize window
nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+
nmap <C-w><down> <C-w>-
" Move cursor position
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l
nnoremap <Leader>H <C-w>H
nnoremap <Leader>J <C-w>J
nnoremap <Leader>K <C-w>K
nnoremap <Leader>L <C-w>L


"########## Command系 ##########
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>wa :wa<CR>
nnoremap <Leader>qa :qa<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>wqa :wqa<CR>
 noremap <Leader>vs :vs<CR>
nnoremap <Leader>sp :sp<CR>
nnoremap <Leader>m :make<CR><CR><C-w><C-w>


"########## Col & Row ##########
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk


"########## Complement ##########
"補完選択時のキーマッピング
" inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"
" inoremap <expr><C-j> pumvisible() ? "<Down>" : "<C-n>"
" inoremap <expr><C-k> pumvisible() ? "<Up>" : "<C-p>"
inoremap <silent><expr> <C-j> coc#pum#visible() ? coc#pum#next(1) : "\<C-j>"
inoremap <silent><expr> <C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-k>"
inoremap <silent><expr> <Enter> coc#pum#visible() ? coc#pum#confirm() : "\<Enter>"
inoremap <silent><expr> <Esc> coc#pum#visible() ? coc#pum#cancel() : "\<Esc>"
inoremap <silent><expr> <C-h> coc#pum#visible() ? coc#pum#cancel() : "\<C-h>"


"########## Other ##########
nnoremap + <C-a>
nnoremap - <C-x>
"Tag Jump (宣言元へ移動)
nnoremap <C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap <C-k> :split<CR> :exe("tjump ".expand('<cword>'))<CR>
"Escでハイライト消す
nnoremap <ESC><ESC> :nohlsearch <CR>
"Insertモード時、ステータスラインの色を変更
let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'
"コメントアウト
nmap <C-K> <Plug>(caw:hatpos:toggle)
vmap <C-K> <Plug>(caw:hatpos:toggle)
" 下部に高さ10のコマンドラインを生成
nnoremap s; :<c-u>sp<cr><c-w>J:<c-u>res 20<cr>:<C-u>terminal<cr>:<c-u>setlocal noequalalways<cr>i


"///vs////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"	Plugin Mapping
"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

"Airline Mapping
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab

"NERDTreeToggle Mapping
nmap <C-f> :NERDTreeToggle<CR>

"Tagber Mapping
" nnoremap <silent> <Leader>t :<C-u>TagbarToggle<CR>
nnoremap <C-t> :<C-u>TagbarToggle<CR>
