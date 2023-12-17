
let mapleader = "\<Space>"

"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"	Operation Mapping
"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"Insert$B%b!<%I$G(Bjj$B$rF~NO$7$?:]$K(BESC$BH=Dj(B
inoremap <silent> jj <Esc>:<C-u>w<CR>
inoremap <silent> JJ <Esc>:<C-u>w<CR>


"########## Window$BA`:n7O(B ##########
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


"########## Command$B7O(B ##########
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
"$BJd40A*Br;~$N%-!<%^%C%T%s%0(B
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
"Tag Jump ($B@k8@85$X0\F0(B)
nnoremap <C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap <C-k> :split<CR> :exe("tjump ".expand('<cword>'))<CR>
"Esc$B$G%O%$%i%$%H>C$9(B
nnoremap <ESC><ESC> :nohlsearch <CR>
"Insert$B%b!<%I;~!"%9%F!<%?%9%i%$%s$N?'$rJQ99(B
let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'
"$B%3%a%s%H%"%&%H(B
nmap <C-K> <Plug>(caw:hatpos:toggle)
vmap <C-K> <Plug>(caw:hatpos:toggle)
" $B2<It$K9b$5(B10$B$N%3%^%s%I%i%$%s$r@8@.(B
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
