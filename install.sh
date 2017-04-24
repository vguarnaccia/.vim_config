echo 'set runtimepath+=~/.vim_config

source ~/.vim/default.vim
source ~/.vim/plugins_config.vim

try
source ~/.vim/experimental.vim
catch
endtry' > ~/.vimrc

echo "Installation successful!"
