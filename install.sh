cd ~/.vim_config

echo 'set runtimepath+=~/.vim_config

source ~/.vim_config/vimrcs/standard.vim
source ~/.vim_config/vimrcs/filetypes.vim
source ~/.vim_config/vimrcs/plugins_config.vim

try
source ~/.vim_config/experimental.vim
catch
endtry' > ~/.vimrc

echo "Installation successful!"
