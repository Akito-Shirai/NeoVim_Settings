"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"	Init
"////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

scriptencoding utf-8
set runtimepath^=~/.config/nvim

augroup MyAutoCmd
    autocmd!
augroup END

"init.vimのエイリアスを再読み込み
command! ReloadVimrc source $MYVIMRC

"Loading Plugin (Vscode or Else)
source ~/.config/nvim/settings/plugins.vim
source ~/.config/nvim/settings/basic.vim
source ~/.config/nvim/settings/appearance.vim
source ~/.config/nvim/settings/option.vim
source ~/.config/nvim/settings/keymap.vim

